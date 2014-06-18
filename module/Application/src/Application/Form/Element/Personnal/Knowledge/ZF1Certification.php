<?php

namespace Application\Form\Element\Personnal\Knowledge;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Checkbox;

class ZF1Certification extends Checkbox implements InputProviderInterface
{
    protected $label = 'Certifié ZF1 :';
    
    public function getInputSpecification()
    {
        return array(
            'name' => $this->getName(),
            'required' => false,
        );
    }
}