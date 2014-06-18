<?php

namespace Application\Form\Form;

use Application\Form\Element;
use Application\Form\Fieldset;

class Contact extends AbstractForm
{
    public function init()
    {
        $this->add(new Fieldset\WebIdentityFieldset());
        $this->add(new Fieldset\SimpleMessage());
        $this->add(new Element\Button\Send());
    }
}