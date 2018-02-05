<?php
namespace Sales\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Sql;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;


class CustomerTable
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

            'custId'=>$data->custId,
            'custName'=>$data->custName,
            'custMobile'=>$data->custMobile,
            'custEmail'=>$data->custEmail,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        //var_dump($Sqldata); exit;
        $this->tableGateway->insert($Sqldata);
        $id = $this->tableGateway->lastInsertValue;
        return $id;
    }


    public function addCust($data)
    {
        //var_dump($data); exit;
        $Sqldata = array(
            'custId'=>$data->custId,
            'custName'=>$data->custName,
            'custMobile'=>$data->custMobile,
            'custEmail'=>$data->custEmail,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
         $this->tableGateway->insert($Sqldata);
        $id = $this->tableGateway->lastInsertValue;
        return $id;
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





    public function getCustbyMobileOrEmail($mobile=null , $email = null){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        if($mobile!=null) {
            $select->where(array("custMobile" => $mobile));
        }
        elseif($email != null ){
            $select->where(array("custEmail" => $email));
        }
        elseif ($mobile==null && $email==null){
            return null ;
        }

        //echo $select->getSqlString(); exit;

        $resultSet = $this->tableGateway->selectWith($select);
        return  $resultSet->current();
    }

    public function getCustById($custId){
        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        $select->from($this->tableGateway->getTable());
        $select->where(array("custId" => $custId));
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


}


