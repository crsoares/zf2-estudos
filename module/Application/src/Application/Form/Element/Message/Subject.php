<?php

namespace Application\Form\Element\Message;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class Subject extends Text implements InputProviderInterface
{
    protected $label = 'Sujet :';
    
    public function getInputSpecification()
    {
        return array(
            'name' => $this->getName(),
            'required' => true,
            'filters' => array(
                array('name' => 'StringTrim'),
                array('name' => 'StripTags'),
            ),
        );
    }
}