<?php

namespace Sales;




use Sales\Model\Customer;
use Sales\Model\CustomerTable;
use Sales\Model\Employees;
use Sales\Model\EmployeesTable;
use Sales\Model\Roles;
use Sales\Model\RolesTable;
use Sales\Model\Sales;
use Sales\Model\SalesTable;
use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Zend\Session\Config\SessionConfig;
use Zend\Session\Container;
use Zend\Session\SessionManager;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;

class Module
{
    public function onBootstrap($e)
    {
        $e->getApplication()->getServiceManager()->get('translator');
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);

        $eventManager = $e->getApplication()->getEventManager();
        $eventManager->attach('dispatch', array($this, 'loadConfiguration' ));

        $eventManager->getSharedManager()->attach('Zend\Mvc\Controller\AbstractActionController', 'dispatch', function($e) {
            $controller = $e->getTarget();
            $controllerClass = get_class($controller);
            $moduleNamespace = substr($controllerClass, 0, strpos($controllerClass, '\\'));
            //var_dump($moduleNamespace); exit;
            $config = $e->getApplication()->getServiceManager()->get('config');
            //echo '<pre>';var_dump($config['module_layouts'][$moduleNamespace]);die;
            if (isset($config['module_layouts'][$moduleNamespace])) {
                $controller->layout($config['module_layouts'][$moduleNamespace]);
            }
        }, 100);

        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);

        $this->initSession(array(
            'remember_me_seconds' => 60 * 60 * 24 * 30,
            'use_cookies' => true,
            'cookie_httponly' => true,
        ));
        //$this->loadConfiguration($e);
    }

    public function initSession($config){
        $sessionConfig = new SessionConfig();
        $sessionConfig->setOptions($config);
        $sessionManager = new SessionManager($sessionConfig);
        $sessionManager->start();
        Container::setDefaultManager($sessionManager);
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }

    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }


    public function loadConfiguration(MvcEvent $e)
    {
       // $user_session = new Container('emp');
        //$empDetails = $user_session->empDetails;
        $controller = $e->getTarget();
        //$controller->layout()->name = $empDetails->name;

        $empSession = new Container('emp');
        $empDetails = $empSession->empDetails;
         //var_dump($empDetails); exit;

        if ($empSession->offsetExists('roleName')){
            //echo "we are looged in "; exit;
            //$this->layout()->name= $empSession->name;
            // var_dump($empDetails); exit;
            $controller->layout()->setVariable("empName",$empDetails->name);
            $controller->layout()->setVariable("name",$empDetails->name);
            $controller->layout()->setVariable("empDetails",$empDetails);
            $controller->layout()->setVariable("roleName",$empSession->roleName);
            $controller->layout()->empDet = $empDetails;


        }
    }






    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                '\Sales\Model\CustomerTable' =>  function($sm) {
                    $tableGateway = $sm->get('CustomerTableGateway');
                    $table = new CustomerTable($tableGateway);
                    return $table;
                },
                'CustomerTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Customer());
                    return new TableGateway('customers', $dbAdapter, null, $resultSetPrototype);
                },
                '\Sales\Model\SalesTable' =>  function($sm) {
                    $tableGateway = $sm->get('SalesTableGateway');
                    $table = new SalesTable($tableGateway);
                    return $table;
                },
                'SalesTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Sales());
                    return new TableGateway('sales', $dbAdapter, null, $resultSetPrototype);
                },
                '\Sales\Model\RolesTable' =>  function($sm) {
                    $tableGateway = $sm->get('RolesTableGateway');
                    $table = new RolesTable($tableGateway);
                    return $table;
                },
                'RolesTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Roles());
                    return new TableGateway('roles', $dbAdapter, null, $resultSetPrototype);
                },
                '\Sales\Model\EmployeesTable' =>  function($sm) {
                    $tableGateway = $sm->get('EmployeesTableGateway');
                    $table = new EmployeesTable($tableGateway);
                    return $table;
                },
                'EmployeesTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Employees());
                    return new TableGateway('employees', $dbAdapter, null, $resultSetPrototype);
                },
            )

        );
    }

}
