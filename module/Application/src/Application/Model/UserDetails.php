<?php
namespace Application\Model;

// Add these import statements
use Zend\InputFilter\InputFilter;
use Zend\InputFilter\InputFilterAwareInterface;
use Zend\InputFilter\InputFilterInterface;

class UserDetails implements InputFilterAwareInterface
{
    public $userId;
    public $summary;

    public $status;
    public $dateAdded;
    public $dateUpdated;

    protected $inputFilter;

    /*
     * @Author Naveen
     * @Project BookMyBloom
     * */

    public function exchangeArray($data)
    {


        $this->userId = (isset($data['userId'])) ? $data['userId'] : "";
        $this->summary = (isset($data['summary'])) ? $data['summary'] : "";
        $this->status = (isset($data['status'])) ? $data['status'] : 1;
        $this->dateAdded = (isset($data['dateAdded'])) ? $data['dateAdded'] : date('Y-m-d H:i:s');
        $this->dateUpdated = (isset($data['dateUpdated'])) ? $data['dateUpdated'] : date('Y-m-d H:i:s');

    }

    public function setInputFilter(InputFilterInterface $inputFilter)
    {
        throw new \Exception("Not used");
    }

    public function getInputFilter()
    {
        if (!$this->inputFilter) {
            $inputFilter = new InputFilter();

            $inputFilter->add(array(
                'name'     => 'userId',
                //'required' => true,
                'filters'  => array(
                    array('name' => 'StripTags'),
                    array('name' => 'StringTrim'),
                ),
                'validators' => array(

                ),
            ));

            $inputFilter->add(array(
                'name'     => 'summary',
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
        // $this->inputFilter ;

    }
}
