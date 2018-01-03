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



class Customer implements InputFilterAwareInterface
{

    protected $inputFilter;
    public $custId;
    public $custName;
    public $custMobile;
    public $custEmail;
    public $status;
    public $dateAdded;
    public $dateUpdated;


    public function exchangeArray($data)
    {
        $this->custId     = (isset($data['custId'])) ? $data['custId'] : null;
        $this->custName     = (isset($data['custName'])) ? $data['custName'] : null;
        $this->custMobile     = (isset($data['custMobile'])) ? $data['custMobile'] : null;
        $this->custEmail     = (isset($data['custEmail'])) ? $data['custEmail'] : null;
        $this->status   = (isset($data['status'])) ? $data['status']  : null;
        $this->dateAdded   = (isset($data['dateAdded'])) ? $data['dateAdded']  : date('Y-M-d H:i:s');
        $this->dateUpdated   = (isset($data['dateAdded'])) ? $data['dateAdded']  : null;


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