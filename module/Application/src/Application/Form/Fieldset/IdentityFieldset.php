<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldset;
use Application\Form\Element\Personnal;

class IdentityFieldset extends AbstractFieldset
{
    public function __construct($name = null)
    {
        parent::__construct('identity');
        $this->add(new Personnal\Firstname());
        $this->add(new Personnal\Name());
    }
}
