<?php
namespace Application\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Sql;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;


class UsersTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }


    public function fetchAll($paginated=false) {
    
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->order('image_id DESC');
        //$select->join('role', 'user.role_id = role.id', array('role' => 'name'));
        //$select->join('group', 'user.group_id = group.id', array('group' => 'name'));
    
        if ($paginated) {
            $dbTableGatewayAdapter = new DbSelect($select, $sql);
            //$dbTableGatewayAdapter = new DbTableGateway($this->tableGateway);
            $paginator = new Paginator($dbTableGatewayAdapter);
            return $paginator;
        }
    
        $resultSet = $this->tableGateway->selectWith($select);
    
        return $resultSet;
    }
    

    public function save($data)
    {
        
        $Sqldata = array(
            //'userId'=>$data->userId,
            'email'=>$data->email,
            'firstName'=>$data->firstName,
            'lastName'=>$data->lastName,
            'passwd'=>md5($data->passwd),
            //'passwd'=>$data->passwd,
            'zip'=>$data->zip,
            'city'=>$data->city,
            'state'=>$data->state,
            'country'=>$data->country,
            'mobile'=>$data->mobile,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
        );
        //var_dump($Sqldata); exit;
        $this->tableGateway->insert($Sqldata);
        $id = $this->tableGateway->lastInsertValue;
        return $id;
    }


    public function addUser($data)
    {
        //var_dump($data); exit;
        $Sqldata = array(
            'email'=>$data->email,
            'name'=>$data->name,
            'phone'=>$data->phone,
            'password'=>md5($data->password),
            'status'=>$data->status,
            'date_added'=>$data->date_added,
        );
        return $this->tableGateway->insert($Sqldata);
    }
    
    public function update($data)
    {
    
         $Sqldata = array(
            'user_id'=>$data->user_id,
            'address'=>$data->address,
            'pincode'=>$data->pincode,
            'city'=>$data->city,
            'state'=>$data->state,
            'email'=>$data->email,
            'dob'=>$data->dob,
            'phone'=>$data->phone,
            'status'=>$data->status,
            'date_added'=>$data->date_added,
        );
        return $this->tableGateway->update($Sqldata,array('user_id'=>$data->user_id));
        //var_dump($product); exit;
    }
    
    public function checkEmail($email) {
        
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("email"=>$email));
        //$select->join('role', 'user.role_id = role.id', array('role' => 'name'));
        //$select->join('group', 'user.group_id = group.id', array('group' => 'name'));
        
        $resultSet = $this->tableGateway->selectWith($select);


        $res = "";
        if($resultSet->count()>0){
            $res =  "false";
        } else {
            $res = "true";
        }
        return $res;
        
    }

    public function getDetailsByEmail($email) {

        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("email"=>$email));
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet->current();

    }



    
    public function checkPhone($phone) {
    
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("phone"=>$phone));
        //$select->join('role', 'user.role_id = role.id', array('role' => 'name'));
        //$select->join('group', 'user.group_id = group.id', array('group' => 'name'));
        
        //echo $select; exit;
        $resultSet = $this->tableGateway->selectWith($select);
    
        $res = "";
        if($resultSet->count()==0){
            $res =  "true";
        } else {
            $res = "false";
        }
        return $res;
    
    }

    public function login($email,$password){
       // echo $email."-----".$password;
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("email"=>$email,"passwd"=>md5($password)));
      //  echo $select->getSqlString();
        $resultSet = $this->tableGateway->selectWith($select);

        return $resultSet;
    }


    public function getUserDetails($userId){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("userId"=>$userId));
        $resultSet = $this->tableGateway->selectWith($select);
        return  $resultSet->current();
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


    public function getUserbyCode($code){
        $sqlString = "Select * from passwd where code = '".$code."' " ;
        //var_dump($sqlString); exit;
        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);

        return $resultSet->current();
    }

    public function updatePassword($user_id,$password){
        $sqlString = "Update users set password = md5('".$password."') where user_id = '".$user_id."'" ;
        //var_dump($sqlString); exit;
        $resultSet = $this->tableGateway->getAdapter()->driver->getConnection()->execute($sqlString);

        return $resultSet;
    }


    
    
    



}


