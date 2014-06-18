<?php

namespace Application\Form\Element\Text;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Text;

class Title extends Text implements InputProviderInterface
{
    protected $label = 'Titre :';
    
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