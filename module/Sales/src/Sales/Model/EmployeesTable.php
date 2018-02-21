<?php
namespace Sales\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\Sql\Where;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Sql;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;


class EmployeesTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }


    public function fetchAll($paginated=false) {
        //echo "mod"; exit;

        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        //$select->from($this->tableGateway->getTable());
        $select->from($this->tableGateway->getTable());
        $select->order('dateAdded DESC');
        //$select->join('role', 'user.role_id = role.id', array('role' => 'name'));
        //$select->join('group', 'user.group_id = group.id', array('group' => 'name'));
        //$select = "SELECT employees.*,roles.roleName FROM employees,roles where employees.roleId=roles.roleId";
        //var_dump($select); exit;



        if ($paginated) {
            //echo "hhh"; exit;
            $dbTableGatewayAdapter = new DbSelect($select, $sql);
            //var_dump($dbTableGatewayAdapter->count()); exit;
            //$dbTableGatewayAdapter = new DbTableGateway($this->tableGateway);

            $paginator = new Paginator($dbTableGatewayAdapter);


            //var_dump($paginator->getCurrentItemCount()); exit;

            return $paginator;
        }

        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($select);

        return $resultSet;

       // $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);


    }

    public function getTeamLeaders(){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("roleId"=>"2"));
       // $where = new Where();
       // $where->equalTo("parentId","0");
       // $select->where($where);
       // var_dump($select->getSqlString()); exit;

        $resultSet = $this->tableGateway->selectWith($select);

        return $resultSet;

    }

    public function getUpsellers(){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $conditions = array('roleId' => '3', 'roleId' => '2');
        $select->where->in('roleId',array(3, 2));
        //$select->where($conditions, \Zend\Db\Sql\Predicate\PredicateSet::);
        //echo $select->getSqlString(); exit;

        $resultSet = $this->tableGateway->selectWith($select);

        return $resultSet;

    }


    public function getAgents(){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("roleId"=>"1"));
        // $where = new Where();
        // $where->equalTo("parentId","0");
        // $select->where($where);
        // var_dump($select->getSqlString()); exit;

        $resultSet = $this->tableGateway->selectWith($select);

        return $resultSet;

    }


    public function save($data)
    {
        //var_dump($data); exit;

        $Sqldata = array(

            'empId'=>$data->empId,
            'roleId'=>$data->roleId,
            'parentId'=>$data->parentId,
            'name'=>$data->name,
            'mobile'=>$data->mobile,
            'email'=>$data->email,
            'target'=>$data->target,
            'pending'=>$data->pending,
            'completed'=>$data->completed,
            'salary'=>$data->salary,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        //var_dump($Sqldata); exit;
        $this->tableGateway->insert($Sqldata);
        $id = $this->tableGateway->lastInsertValue;
        return $id;
    }


    public function addEmp($data)
    {
        //var_dump($data); exit;
        $Sqldata = array(
            'empId'=>$data->empId,
            'name'=>$data->name,
            'mobile'=>$data->mobile,
            'email'=>$data->email,
            'target'=>$data->target,
            'pending'=>$data->pending,
            'completed'=>$data->completed,
            'salary'=>$data->salary,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        return $this->tableGateway->insert($Sqldata);
    }

    public function update($data)
    {

        $Sqldata = array(
            'custId'=>$data->custId,
            'custName'=>$data->custName,
            'custMobile'=>$data->custMobile,
            'custEmail'=>$data->custEmail,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        return $this->tableGateway->update($Sqldata,array('custId'=>$data->custId));
        //var_dump($product); exit;
    }

    public function updatePassword($data){
        $Sqldata = array(
            'empId'=>$data->empId,
            'passwd'=>$data->passwd,

        );
        //print_r($Sqldata); exit;
        return $this->tableGateway->update($Sqldata,array('empId'=>$data->empId));

    }





    public function getEmpDetailsById($empId){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("empId"=>$empId));
        $resultSet = $this->tableGateway->selectWith($select);
        return  $resultSet->current();
    }




    public function getEmpDetails($mobileOrEmail){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        if (filter_var($mobileOrEmail, FILTER_VALIDATE_EMAIL)) {
            $select->where(array("email"=>$mobileOrEmail));
        } else {
            $select->where(array("mobile"=>$mobileOrEmail));
        }

        $resultSet = $this->tableGateway->selectWith($select);
        return  $resultSet->current();
    }


    public function getEmpLogin($mobileOrEmail,$password){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        if (filter_var($mobileOrEmail, FILTER_VALIDATE_EMAIL)) {
            $select->where(array("email"=>$mobileOrEmail,"passwd"=>$password));
        } else {
            $select->where(array("mobile"=>$mobileOrEmail,"passwd"=>$password));
        }
        //echo $select->getSqlString(); exit;

        $resultSet = $this->tableGateway->selectWith($select);
        return  $resultSet;
    }



    public function getEventImages($event_id){
        $sqlString = "Select ev.*,ei.image from events ev join event_images ei on ev.event_id = ei.event_id where ev.event_id = ".$event_id;
        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);
        //var_dump($resultSet->count()); exit;
        return $resultSet;
    }

    public function getUserById($userId ){
        $sqlString = "SELECT users.*, user_details.* FROM users join user_details on users.userId=user_details.userId where users.userId= ".$userId;
        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);
        //var_dump($resultSet->count()); exit;
        return $resultSet;
    }

    public function insertPasswd($data){
        $user_id = $data['user_id'];
        $code = $data['code'];
        $expiry_date = $data['expiry_date'];
        $sqlString = "INSERT INTO passwd SET user_id ='".$user_id."',code='".$code."',expiry_date = '".$expiry_date."' " ;
        //var_dump($sqlString); exit;
        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);

        return $resultSet;

    }


}


