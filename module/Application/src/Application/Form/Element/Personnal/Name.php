<?php

namespace Application\Form\Element\Personnal;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class Name extends Text implements InputProviderInterface
{
    protected $label = 'Nom :';
    
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