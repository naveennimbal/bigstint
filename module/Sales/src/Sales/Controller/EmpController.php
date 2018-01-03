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
        //echo $layoutName; exit;

        return new ViewModel(array("result"=>array()));

    }

    public function addAction()
    {

        $rol = $this->getRolesTable()->fetchAll();
        $roles = array();
        $x=0;

        foreach ($rol as $role){
            $roles[$x]['id']= $role['roleId'];
            $roles[$x]['name']= $role['roleName'];
            $x++;
        }

        $tl = $this->getEmpTable()->getTeamLeaders();
        $teamLeaders = array();
        $x=0;
        foreach ($tl as $emp){
            var_dump($emp); exit;

            $teamLeaders[$x]['id']= $emp['empId'];
            $teamLeaders[$x]['name']= $emp['name'];
            $x++;
        }




        return new ViewModel(array("result"=>array(),"roles"=>$roles));

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
}
