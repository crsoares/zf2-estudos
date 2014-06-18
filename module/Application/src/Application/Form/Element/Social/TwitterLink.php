<?php

namespace Application\Form\Element\Social;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class TwitterLink extends Text implements InputProviderInterface
{
    protected $label = 'Profil Twitter :';
    
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