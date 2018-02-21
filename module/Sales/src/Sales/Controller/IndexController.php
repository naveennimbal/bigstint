<?php

namespace Sales\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Paginator\Paginator;
use Zend\View\Model\ViewModel;
use Zend\Session\SessionManager;
use Zend\Session\Container;

class IndexController extends AbstractActionController
{

    protected $cartTable;
    protected $serviceTable;
    protected $paymentTable;
    protected $empTable;
    protected $custTable;
    protected $saleTable;


    public function getPaymentTable() {
        if (!$this->paymentTable) {
            $sm = $this->getServiceLocator();
            $this->paymentTable = $sm->get('\Application\Model\PaymentTable');
        }
        return $this->paymentTable;
    }



    public function getCartTable() {
        if (!$this->cartTable) {
            $sm = $this->getServiceLocator();
            $this->cartTable = $sm->get('\Application\Model\CartTable');
        }
        return $this->cartTable;
    }

    public function getServiceTable() {
        if (!$this->serviceTable) {
            $sm = $this->getServiceLocator();
            $this->serviceTable = $sm->get('\Application\Model\ServicesTable');
        }
        return $this->serviceTable;
    }

    public function getEmpTable() {
        if (!$this->empTable) {
            $sm = $this->getServiceLocator();
            $this->empTable = $sm->get('\Sales\Model\EmployeesTable');
        }
        return $this->empTable;
    }

    public function getCustTable() {
        if (!$this->custTable) {
            $sm = $this->getServiceLocator();
            $this->custTable = $sm->get('\Sales\Model\CustomerTable');
        }
        return $this->custTable;
    }

    public function getSaleTable() {
        if (!$this->saleTable) {
            $sm = $this->getServiceLocator();
            $this->saleTable = $sm->get('\Sales\Model\SalesTable');
        }
        return $this->saleTable;
    }


    public function indexAction()
    {
        //$layoutName = $this->layout()->getTemplate();
        //echo $layoutName; exit;
        $empSession = new Container('emp');
        $empDetails = $empSession->empDetails;
       // var_dump($empSession->roleName); exit;

        if ($empSession->offsetExists('roleName')){
            //echo "we are looged in "; exit;
            //$this->layout()->name= $empSession->name;
           // var_dump($empDetails); exit;
            $this->layout()->setVariable("empName",$empDetails->name);
            $this->layout()->setVariable("empDetails",$empDetails);
            $this->layout()->setVariable("roleName",$empSession->roleName);

            // grab the paginator from the AlbumTable
            $paginator = $this->getSaleTable()->getAll(true,$empDetails->empId);
            // set the current page to what has been passed in query string, or to 1 if none set
            $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
            // set the number of items per page to 10
            $paginator->setItemCountPerPage(10);

            $count =  $paginator->getTotalItemCount();


            //echo "jj"; exit;
            return new ViewModel(array("details"=>$empSession,"paginator"=>$paginator,"count"=>$count));

        } else{
            $this->redirect()->toRoute("sales",array("controller"=>"index","action"=>"login"));
        }

    }


    private function checkLogin(){

        //$emp = new Container('emp');
        $empSession = new Container('emp');
        if ($empSession->offsetExists('roleName')){
            return true;
        } else{
            return false;
        }


       // $user = $userSession->userDetails;


    }

    public function loginAction(){
        $request = $this->getRequest();
        if($request->isPost()){
            // make the session and redirect to index controller
            $email = $request->getPost('mobile');
            $password = md5($request->getPost('password'));

            $empResults = $this->getEmpTable()->getEmpLogin($email,$password);
            //var_dump($empDetails->current()); exit;

            if($empResults->count()==1){
               $empDetails = $empResults->current();
                $empSession = new Container('emp');
                $empSession->empDetails = $empDetails;
                $empSession->roleName = "";
                if($empDetails->roleId==1){
                    $empSession->roleName="Agent";
                }
                elseif($empDetails->roleId==2){
                    $empSession->roleName="Team Leader";
                }
                elseif($empDetails->roleId==3){
                    $empSession->roleName="Upseller";
                } else{
                    $empSession->roleName="Administrator";
                }
                $this->redirect()->toRoute('sales',array("controller"=>"index","action"=>"index"));
            } else{
                $this->layout('layout/login');
                return new ViewModel(array("result"=>"fail"));
            }



        } else {
            $this->layout('layout/login');
        }
    }

    public function logoutAction(){
        $empSession = new Container('emp');
        $empSession->getManager()->destroy();
        $this->redirect()->toRoute('sales',array("controller"=>"index","action"=>"index"));

    }


    private function getEmmDetailsByMobileOrEmail($mobileOrEmail){

    }




    public function addAction()
    {
        //$layoutName = $this->layout()->getTemplate();
        //echo $layoutName; exit;
        $ser = $this->getServiceTable()->getServices();
        $services= array();
        $x=0;
        $result = array();
        //var_dump($services);
        foreach ($ser as $service){
            //var_dump($service); exit;
            $services[$x]['id'] = $service['serviceOptionId'];

            $name = $service['serviceTitle'];
            if($service['optionTitle']!="" || $service['optionTitle']!=null ){
                $name = $service['serviceTitle']."(".$service['optionTitle'].")";
            }
            $services[$x]['name'] = $name;
            $x++;
        }

        // now the get list of agnets available

        $agent = $this->getEmpTable()->getAgents();
        $x = 0 ;
        $agents = array();
        foreach ($agent as $ag){
            $agents[$x]['id'] = $ag->empId;
            $agents[$x]['name'] = $ag->name;
            $x++;
        }


        $upseller = $this->getEmpTable()->getUpsellers();
        $x = 0 ;
        $upsellers = array();
        foreach ($upseller as $up){
            $upsellers[$x]['id'] = $up->empId;
            $upsellers[$x]['name'] = $up->name;
            $x++;
        }

        // this is to get the Agent Id  ..
        $empSession = new Container('emp');
        //var_dump($empSession->empDetails); exit;
        $agentId = $empSession->empDetails->empId;
        //var_dump($agentId); exit;




        $request = $this->getRequest();
        $custId = 0;
        if($request->isPost()){
            //process the post code here
            //look for the customer if its already exist
            $custName = $request->getPost('custName');
            $custEmail = $request->getPost('custEmail');
            $custMobile = $request->getPost('custMobile');
            $amount = $request->getPost('amount');
            $serviceArray = $request->getPost('services');
            $agent = $request->getPost('agent');
            $ups = $request->getPost('upseller');
            $isFresh = $request->getPost('isFresh');
            $transId = $request->getPost('transId');
            $gateway = $request->getPost('gateway');
           // print_r($request->getPost()); exit;

            if($custName==""){
                $result['fail'][] ="Customer Name Missing";
            }
            if($custEmail==""){
                $result['fail'][] ="Customer Email Missing";
            }
            if($custMobile==""){
                $result['fail'][] ="Customer Mobile Number Missing";
            }
            if($amount==""){
                $result['fail'][] ="Forget to mention Amount ";
            }
            if($transId==""){
                $result['fail'][] ="What is the Transaction ID";
            }
            if($gateway=="") {
                $result['fail'][] = "Which Gateway used for the payment";
            }
            if(count($serviceArray)==0 ) {
                $result['fail'][] = "Select the service ";
            }

            if($custName !="" && $custMobile!="" && $custEmail!="" && $amount!="" && $transId!="" && $gateway!="" && $serviceArray!="") {

                // print_r($request->getPost('upseller')); exit;

                $cust = $this->getCustomerbyMobile($custMobile);
                //var_dump($cust); exit;
                if (is_null($cust)) {
                    //if null customer doesnt exist then add the customer
                    $data = array(
                        'custName' => $custName,
                        'custMobile' => $custMobile,
                        'custEmail' => $custEmail,
                        'status' => "1",
                        'dateAdded' => date('Y-m-d H:i:s'),
                    );
                    $data = (object)$data;

                    $custId = $this->getCustTable()->addCust($data);
                    $cust = $this->getCustomerById($custId);

                    $saleData = array(
                        'empId' => $agent,
                        'upseller' => $ups,
                        'custId' => $cust->custId,
                        'amount' => $amount,
                        'isFresh' => $isFresh,
                        'transId' => $transId,
                        'gateway' => $gateway,
                        'services' => implode(",", $serviceArray),
                        'status' => "1",
                        'dateAdded' => date('Y-m-d H:i:s')

                    );
                    $transIdCheck = $this->checkTransactionId($transId);
                    if ($transIdCheck) {
                        $saleData = (object)$saleData;
                        $this->getSaleTable()->addSale($saleData);
                        $result['success'] = "Sale uploaded successfully";
                    } else {
                        $result['fail'] = "Transaction ID already Exist";
                    }


                } else {
                    //This is the where we get the customer details and process the sale data
                    //var_dump($cust->custId); exit;
                    $saleData = array(
                        'empId' => $agent,
                        'upseller' => $ups,
                        'custId' => $cust->custId,
                        'amount' => $amount,
                        'isFresh' => $isFresh,
                        'transId' => $transId,
                        'gateway' => $gateway,
                        'services' => implode(",", $serviceArray),
                        'status' => "1",
                        'dateAdded' => date('Y-m-d H:i:s')
                    );
                    // print_r($saleData); exit;
                    $transIdCheck = $this->checkTransactionId($transId);
                    if ($transIdCheck) {
                        $saleData = (object)$saleData;
                        $this->getSaleTable()->addSale($saleData);
                        $result['success'] = "Sale uploaded successfully";
                    } else {
                        $result['fail'] = "Transaction ID already Exist";
                    }

                }
            }




        }

        return new ViewModel(array("result"=>$result,"services"=>$services,"agents"=>$agents,"upsellers"=>$upsellers,"agentId"=>$agentId));

    }

    private function getCustomerById($custId){
        $cust = $this->getCustTable()->getCustById($custId);
        return $cust;

    }



    private function getCustomerbyMobile($mobile){
        $cust = $this->getCustTable()->getCustbyMobileOrEmail($mobile);
        return $cust;
    }

    private function checkTransactionId($transId){
        $return = true;
        $transId = $this->getSaleTable()->checkTransId($transId);
        //var_dump($transId->count()); exit;
        if ($transId->count() >0 ){
            $return = false ;
        }
        return $return;

    }

    public function confirmAction(){
        $request = $this->getRequest();
        $result = array();
        $count = 0;
        if($request->isPost()){
            $email = $request->getPost('email');
            $mobile = $request->getPost('mobile');

            $result = $this->getCartTable()->getPaymentStatus($email,$mobile);



            return new ViewModel(array("result"=>$result,"count"=>$count));
        }

        return new ViewModel(array("result"=>$result,"count"=>$count));

    }


    public function changepasswordAction(){
        $result ="";
        $request = $this->getRequest();
        if($request->isPost()){
           // print_r($request->getPost()); exit;
            $empSession = new Container('emp');
            //var_dump($empSession->empDetails); exit;
            $agentId = $empSession->empDetails->empId;
            $passwd = $empSession->empDetails->passwd;
            $newpwd = $request->getPost('newpwd');
            $conpwd = $request->getPost('conpwd');
            $currpwd = $request->getPost('currpwd');
            //echo md5(trim($currpwd)); exit();
            if($passwd == md5($currpwd)){
                if(trim($newpwd)==trim($conpwd)){
                    // update password here
                    //echo $newpwd; exit;
                    $passwdUpdate = md5(trim($newpwd));
                    $data = array();
                    $data['empId']=$agentId;
                    $data['passwd']=$passwdUpdate;
                    $data = (object)$data;

                    $update = $this->getEmpTable()->updatePassword($data);
                    if($update){
                        $empSession->empDetails->passwd = $passwdUpdate;
                        $result['status'] = "success";
                        $result['msg'] = "Password Updated Successfully ";
                    } else {
                        $result['status'] = "fail";
                        $result['msg'] = "Something went wrong";
                    }


                } else {
                    $result['status'] = "fail";
                    $result['msg'] = "Password do not match ";
                }

            } else {
                $result['status'] = "fail";
                $result['msg'] = "Incorrect Current Password ";
            }
            return new ViewModel(array("result"=>$result));

        }
        return new ViewModel(array("result"=>$result));


    }


}
