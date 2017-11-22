<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

use Zend\Session\SessionManager;
use Zend\Session\Container;
//use Fui\Form\SignupForm;
use Application\Model\Users;
use Application\Model\UsersTable;
use Application\Model\Jobseekers;
use Application\Model\JobseekersTable;

use Zend\View\Model\JsonModel;
use Zend\View\View;

class RegisterController extends AbstractActionController
{


    protected $usersTable;



    public function getUsersTable() {
        if (!$this->usersTable) {
            $sm = $this->getServiceLocator();
            $this->usersTable = $sm->get('\Application\Model\UsersTable');
        }
        return $this->usersTable;
    }







    public function regajaxAction()
    {
        // $form = new SignupForm;


        $return = array();

        $request = $this->getRequest();
        if ($request->isPost()) {


        } else {
            $return['status']= "fail";
            $return['message']= "Invalid method type ";

        }

        return new JsonModel($return);
    }




    public function indexAction()
    {
        // $form = new SignupForm;

        $request = $this->getRequest();
        if ($request->isPost()) {


            $user = new \Application\Model\Users();
            $userData = array();
            // echo $request->getPost('email'); exit;

            $userData['email']=$request->getPost('email');
            $userData['passwd']=$request->getPost('passwd');
            $userData['passwd2']=$request->getPost('passwd2');

            if($userData['passwd'] == $userData['passwd2']){
                $isEmail = $this->checkEmail($userData['email']);
                if($isEmail=="true"){


                    $user->exchangeArray($userData);
                    //$userData = (object)$userData;
                    if ($this->getUsersTable()->save($user)) {
                        return new ViewModel(array("result" => "success"));
                    } else {
                        return new ViewModel(array("result" => "fail"));
                    }


                } else {
                    return new ViewModel(array("result"=>"emailexist"));

                }


            } else{
                return new ViewModel(array("result"=>"passnotmatch","email"=>$userData['email']));
            }




        } else {
            //return new ViewModel(array("form"=>$form));
            $this->layout()->setVariable('register', 'register');
            return new ViewModel(array("register"=>"register"));
        }
    }


    public function makeProfileId($email){
        $nameArr = explode('@', $email);
        $name = $nameArr[0];


        $name = substr($name, 0, 3);
        $profileId = $name.date('d').date('m').date('s');
        //echo $profileId ; exit;
        $check = $this->checkProfile($profileId);
        if($check===true){
            return $profileId;
        } else {
            $profileId = $profileId."_2";
            return $profileId;
        }

    }


    public function checkProfile($profileId){
        $profileRes = $this->getJobseekersTable()->checkProfile($profileId);
        return $profileRes;
    }




    private function checkEmail($email){

        // echo $email; exit;
        $user = new \Application\Model\Jobseekers();
        $ret =  $this->getUsersTable()->checkEmail($email);
        //var_dump($ret); exit;
        return $ret;

    }

    private function checkMobile($mobile){

        // echo $email; exit;
        $user = new \Application\Model\Jobseekers();
        $ret =  $this->getJobseekersTable()->checkMobile($mobile);
        //var_dump($ret); exit;
        return $ret;

    }



    public function checkemailAction(){
        $request = $this->getRequest();
        $ret= array();
        if($request->isPost()){
            $user = new \Application\Model\Users();
            $ret['status'] = $this->getUsersTable()->checkEmail($request->getPost('email'));

        }

        return new JsonModel($ret);
    }




    public function loginAction(){
        $request = $this->getRequest();
        $email = $request->getPost('email');
        $password = $request->getPost('passwd');
        //var_dump($request->getPost()); exit;
        $return = array();
        if($request->isPost()) {
            if ($email != "" && $password != "") {
                $res = $this->getUsersTable()->login($email, $password);
                // var_dump($res->count()); exit;
                if ($res->count() == 1) {
                    $user_session = new Container('user');
                    $user_session->userDetails = $res->current();

                    $return['status'] = "success";

                   // return $this->redirect()->toRoute('dns-search', array(
                   //     'companyid' => $this->params()->fromRoute('companyid')
                   // ));
                    //echo "hello "; exit;
                    $this->redirect()->toRoute("profile");
                    return;


                } else {
                    $return['status'] = "fail";
                    $return['message'] = "Incorrect Email or password";
                }

            } else {
                $return['status'] = "fail";
                $return['message'] = "Email and password cannot be empty";
            }
        }


        return new ViewModel($return);
    }


    public function logoutAction(){
        $user_session  = new Container('user');
        unset($user_session->userDetails);
        //$this->redirect()->toRoute("application",array("controller"=>"index","action"=>"index"));
        $this->redirect()->toRoute("home");
    }

}
