<?php

namespace Application\Form\Form;

use Application\Form\Fieldset\AbstractFieldset;
use Zend\Form\Form;
use Zend\Form\ElementInterface;
use Zend\InputFilter\InputFilter;

class AbstractForm extends Form
{
    public function __construct()
    {
        parent::__construct();
        $this->setInputFilter(new InputFilter);
        $this->init();
    }
    
    public function add($elementOrFieldset, array $flags = array())
    {
        if ($elementOrFieldset instanceof ElementInterface
                && !$elementOrFieldset->getName()) {
            $name = AbstractFieldset::formatName($elementOrFieldset);
            $elementOrFieldset->setName($name);
        }
        parent::add($elementOrFieldset, $flags);
    }
}