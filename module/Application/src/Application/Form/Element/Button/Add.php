<?php

namespace Application\Form\Element\Button;

use Zend\InputFilter\InputProviderInterface;
use Zend\Form\Element\Submit;

class Add extends Submit
{
    protected $label = ' ';

    protected $value = 'Ajouter';
}