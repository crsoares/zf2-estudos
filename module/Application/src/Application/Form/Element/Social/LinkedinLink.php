<?php

namespace Application\Form\Element\Social;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class LinkedinLink extends Text implements InputProviderInterface
{
    protected $label = 'Profil Linkedin';
    
    public function getInputSpecification()
    {
        return array(
            'name' => $this->getName(),
            'required' => false,
            'filters' => array(
                array('name' => 'StringTrim'),
                array('name' => 'StripTags'),
            ),
        );
    }
}