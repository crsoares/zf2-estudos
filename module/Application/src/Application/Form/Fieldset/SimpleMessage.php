<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldset;
use Application\Form\Element\Message;

class SimpleMessage extends AbstractFieldset
{
    public function __construct($name = null)
    {
        parent::__construct('simple_message');
        $this->add(new Message\Subject());
        $this->add(new Message\Message());
    }
}
