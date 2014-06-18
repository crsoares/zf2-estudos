<?php

namespace Application\Form\Element\Personnal;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class Firstname extends Text implements InputProviderInterface
{
    protected $label = 'Prénom :';
    
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