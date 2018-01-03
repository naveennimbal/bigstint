<?php
/**
 * Created by PhpStorm.
 * User: naveen
 * Date: 29/12/17
 * Time: 3:47 PM
 */



namespace Sales\Model;


// Add these import statements
use Zend\InputFilter\Factory as InputFactory;
use Zend\InputFilter\InputFilter;
use Zend\InputFilter\InputFilterAwareInterface;
use Zend\InputFilter\InputFilterInterface;



class Roles implements InputFilterAwareInterface
{

    protected $inputFilter;
    public $roleId;
    public $empId;
    public $roleName;
    public $status;



    public function exchangeArray($data)
    {
        $this->roleId = (isset($data['roleId'])) ? $data['roleId'] : null;
        $this->empId = (isset($data['empId'])) ? $data['empId'] : null;
        $this->roleName = (isset($data['roleName'])) ? $data['roleName'] : null;
        $this->status = (isset($data['status'])) ? $data['status'] : null;


    }

    public function getArrayCopy(){
        return get_object_vars($this);
    }


    public function setInputFilter(InputFilterInterface $inputFilter)
    {
        throw new \Exception("Not used");
    }


    public function getInputFilter()
    {
        if (!$this->inputFilter) {
            $inputFilter = new InputFilter();
            $factory = new InputFactory();

            $inputFilter->add(array(
                'name'     => 'roleId',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));
            $inputFilter->add(array(
                'name'     => 'empId',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));

            $inputFilter->add(array(
                'name'     => 'roleName',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));








            $inputFilter->add(array(
                'name'     => 'status',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));



            $this->inputFilter = $inputFilter;
        }
        return $this->inputFilter;
    }

}