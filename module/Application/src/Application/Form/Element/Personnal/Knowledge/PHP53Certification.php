<?php

namespace Application\Form\Element\Personnal\Knowledge;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Checkbox;

class PHP53Certification extends Checkbox implements InputProviderInterface
{
    protected $label = 'Certifié PHP 5.3';
    
    public function getInputSpecification()
    {
        return array(
            'name' => $this->getName(),
            'required' => false,
        );
    }
}