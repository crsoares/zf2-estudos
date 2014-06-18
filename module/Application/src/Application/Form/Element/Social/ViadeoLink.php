<?php

namespace Application\Form\Element\Social;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class ViadeoLink extends Text implements InputProviderInterface
{
    protected $label = 'Profil Viadeo :';
    
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