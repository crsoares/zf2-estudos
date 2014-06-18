<?php

namespace Application\Form\Element\Personnal;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class Email extends Text implements InputProviderInterface
{
    protected $label = 'Email :';
    
    public function getInputSpecification()
    {
        return array(
            'name' => $this->getName(),
            'required' => true,
            'filters' => array(
                array('name' => 'StringTrim'),
                array('name' => 'StripTags'),
            ),
            'validators' => array(
                //array('name' => 'EmailAddress'), MAMP error
            ),
        );
    }
}