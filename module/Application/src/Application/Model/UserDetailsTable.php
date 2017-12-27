<?php
namespace Application\Model;

use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Sql;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;


class UsersDetailsTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }


    public function save($data)
    {

        $Sqldata = array(
            'userId'=>$data->userId,
            'summary'=>$data->summary,
            'status'=>$data->status,
            'dateAdded'=>$data->dateAdded,
            'dateUpdated'=>$data->dateUpdated,
        );
        //var_dump($Sqldata); exit;
        return $this->tableGateway->insert($Sqldata);

    }
}