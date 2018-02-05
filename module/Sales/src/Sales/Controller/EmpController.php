<?php

namespace Sales\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class EmpController extends AbstractActionController
{

    protected $cartTable;
    protected $serviceTable;
    protected $paymentTable;
    protected $empTable;
    protected $rolesTable;


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

    public function getRolesTable() {
        if (!$this->rolesTable) {
            $sm = $this->getServiceLocator();
            $this->rolesTable = $sm->get('\Sales\Model\RolesTable');
        }
        return $this->rolesTable;
    }


    public function indexAction()
    {
        //$layoutName = $this->layout()->getTemplate();
        //
        // grab the paginator from the AlbumTable
        $paginator = $this->getEmpTable()->fetchAll(true);
        // set the current page to what has been passed in query string, or to 1 if none set
        $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));
        // set the number of items per page to 10
        $paginator->setItemCountPerPage(10);

        return new ViewModel(array(
            'paging' => $paginator
        ));

    }

    public function addAction()
    {


        $rol = $this->getRolesTable()->fetchAll();
        //var_dump($rol); exit;
        $roles = array();
        $x=0;

        foreach ($rol as $role){
            //var_dump($role); exit;
            $roles[$x]['id']= $role->roleId;
            $roles[$x]['name']= $role->roleName;
            $x++;
        }
        //var_dump($roles); exit;

        $tl = $this->getEmpTable()->getTeamLeaders();
        $teamLeaders = array();
        $x=0;
        foreach ($tl as $emp){
            //var_dump($emp); exit;

            $teamLeaders[$x]['id']= $emp->empId;
            $teamLeaders[$x]['name']= $emp->name;
            $x++;
        }
        //var_dump($teamLeaders); exit;

       $request = $this->getRequest();
        if($request->isPost()){
           $empName = $request->getPost('empName');
           $empEmail = $request->getPost('empEmail');
           $empMobile = $request->getPost('empMobile');
           $salary = $request->getPost('salary');
           $target = $request->getPost('target');
           $pending = $request->getPost('pending');
           $role = $request->getPost('role');
           $tl = $request->getPost('parent');

           //var_dump($request->getPost()); exit;
            if($this->getEmpbyMobile($empMobile)!=null){
                return new ViewModel(array("result"=>"fail","error"=>"Mobile already exist","roles"=>$roles,"tl"=>$teamLeaders));
            }

            if($this->getEmpbyMobile($empEmail)!=null){
                return new ViewModel(array("result"=>"fail","error"=>"Email already exist","roles"=>$roles,"tl"=>$teamLeaders));
            }

           $data = array();
           $data['roleId'] = $role;
           $data['parentId'] = $tl;
           $data['name'] = $empName;
           $data['mobile'] = $empMobile;
           $data['target'] = $target;
           $data['pending'] = $pending;
           $data['email'] = $empEmail;
           $data['salary'] = $salary;
           $data['status'] = $role;
           //$data['dateAdded'] = date('Y-m-d H:i:s');



           $data = (object)$data;

           $empId = $this->getEmpTable()->save($data);
           $result = "fail";
           if($empId){
               $result = "success";
           }
            return new ViewModel(array("result"=>$result,"roles"=>$roles,"tl"=>$teamLeaders));
        }
        return new ViewModel(array("roles"=>$roles,"tl"=>$teamLeaders));
    }

    private function getEmpbyMobile($mobile)
    {
        $emp = $this->getEmpTable()->getEmpDetails($mobile);
        return $emp;
    }

    private function getEmpbyemail($email)
    {
        $emp = $this->getEmpTable()->getEmpDetails($email);
        return $emp;
    }


    public function searchAction(){
        $request = $this->getRequest();
        $result = array();
        $count = 0;
        if($request->isPost()){
            $email = $request->getPost('email');
            $mobile = $request->getPost('mobile');


            if($email!=""){
                $result = $this->getEmpTable()->getEmpDetails($email);
            }
            if($mobile!=""){
                $result = $this->getEmpTable()->getEmpDetails($mobile);
            }

            $count = count($result);


            return new ViewModel(array("result"=>$result,"count"=>$count));
        }

        return new ViewModel(array("result"=>$result,"count"=>$count));

    }
}
