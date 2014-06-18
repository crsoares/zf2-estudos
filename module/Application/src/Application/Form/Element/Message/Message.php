<?php

namespace Application\Form\Element\Message;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Textarea;

class Message extends Textarea implements InputProviderInterface
{
    protected $label = 'Message :';
    
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