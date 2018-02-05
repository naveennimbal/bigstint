<?php
namespace Sales\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Sql;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;


class SalesTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }


    public function fetchAll($paginated=false) {

        $sql = new Sql($this->tableGateway->adapter);
        $select = $sql->select();
        //$select->columns(array("saleId","empId"));
        //$select->columns(array);
        $select->from($this->tableGateway->getTable());
        $select->order('sales.dateAdded DESC');
        //$select->join('employees', 'sales.empId = employees.empId',Select::SQL_STAR);
        $select->join('employees', 'sales.empId = employees.empId');
        $select->join('customers', 'sales.custId = customers.custId');

        if ($paginated) {
            $dbTableGatewayAdapter = new DbSelect($select, $sql);
            //$dbTableGatewayAdapter = new DbTableGateway($this->tableGateway);
            $paginator = new Paginator($dbTableGatewayAdapter);
            return $paginator;
        }
        //echo $select->getSqlString(); exit;

        $resultSet = $this->tableGateway->selectWith($select);

        echo "<pre>";
        var_dump($resultSet->current()); exit;

        return $resultSet;
    }


    public  function getAll($paginated=false,$empId=null){

        /*
        $select = new Select($this->tableGateway->getTable());
        $select->columns(array('*'));
        $select->join('employees', 'sales.empId = employees.empId',array('*'),array('*'),'inner');
        $select->join('customers', 'sales.custId = customers.custId',array('*'),'inner');

       $resultSet = $this->tableGateway->selectWith($select);

        */


       // $select->prepareStatement($this->tableGateway->adapter);

        $sql = new Sql($this->tableGateway->getAdapter());
        $select = $sql->select();

        $select->from($this->tableGateway->getTable())
            ->join('employees', 'sales.empId = employees.empId',array('name','mobile','passwd','email'),'inner')
            ->join('customers', 'sales.custId = customers.custId',array('custName','custMobile','custEmail'),'inner');
        if($empId!=null){
            $select->where('sales.empId='.$empId);
        }
           // echo $select->getSqlString(); exit;

        if ($paginated) {
            $dbTableGatewayAdapter = new DbSelect($select, $sql);
            //$dbTableGatewayAdapter = new DbTableGateway($this->tableGateway);
            $paginator = new Paginator($dbTableGatewayAdapter);
            return $paginator;
        } else {


            $statement = $sql->prepareStatementForSqlObject($select);
            $resultSet = $statement->execute();


            /* echo "<pre>";
             print_r($resultSet->current()); exit;

             foreach ($resultSet as $item) {
                 //var_dump($item); exit;
             }


             echo "<pre>";
             print_r($resultSet->current()); exit;

            // echo $select->getSqlString(); exit;
            */
            return $resultSet;
        }

    }


    public function save($data)
    {

        $Sqldata = array(

            'saleId'=>$data->saleId,
            'empId'=>$data->empId,
            'upseller'=>$data->upseller,
            'custId'=>$data->custId,
            'services'=>$data->services,
            'isFresh'=>$data->isFresh,
            'transId'=>$data->transId,
            'gateway'=>$data->gateway,
            'amount'=>$data->amount,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        //var_dump($Sqldata); exit;
        $this->tableGateway->insert($Sqldata);
        $id = $this->tableGateway->lastInsertValue;
        return $id;
    }


    public function addSale($data)
    {
        //var_dump($data); exit;
        $Sqldata = array(
            'saleId'=>$data->saleId,
            'empId'=>$data->empId,
            'upseller'=>$data->upseller,
            'custId'=>$data->custId,
            'services'=>$data->services,
            'isFresh'=>$data->isFresh,
            'transId'=>$data->transId,
            'gateway'=>$data->gateway,
            'amount'=>$data->amount,
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


    public function checkTransId($transId){
        $sql = new Sql($this->tableGateway->getAdapter());
        $select = $sql->select();
        $select->from($this->tableGateway->getTable())->where(array("transId"=>$transId));
        $statement = $sql->prepareStatementForSqlObject($select);
        $result = $statement->execute();

        return $result;

    }


}


