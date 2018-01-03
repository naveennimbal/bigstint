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



class Employees implements InputFilterAwareInterface
{

    protected $inputFilter;
    public $empId;
    public $name;
    public $mobile;
    public $email;
    public $salary;
    public $status;
    public $dateAdded;
    public $dateUpdated;


    public function exchangeArray($data)
    {
        $this->empId = (isset($data['empId'])) ? $data['empId'] : null;
        $this->name = (isset($data['name'])) ? $data['name'] : null;
        $this->mobile = (isset($data['mobile'])) ? $data['mobile'] : null;
        $this->email = (isset($data['email'])) ? $data['email'] : null;
        $this->salary = (isset($data['salary'])) ? $data['salary'] : null;
        $this->status = (isset($data['status'])) ? $data['status'] : null;
        $this->dateAdded = (isset($data['dateAdded'])) ? $data['dateAdded'] : date('Y-M-d H:i:s');
        $this->dateUpdated = (isset($data['dateUpdated'])) ? $data['dateUpdated'] : date('Y-M-d H:i:s');

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
                'name'     => 'custId',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));
            $inputFilter->add(array(
                'name'     => 'custName',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));

            $inputFilter->add(array(
                'name'     => 'custMobile',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));

            $inputFilter->add(array(
                'name'     => 'custEmail',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));






            $inputFilter->add(array(
                'name'     => 'dateAdded',
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

            $inputFilter->add(array(
                'name'     => 'dateUpdated',
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