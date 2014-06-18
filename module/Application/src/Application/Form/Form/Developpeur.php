<?php

namespace Application\Form\Form;

use Application\Form\Element;
use Application\Form\Fieldset;

class Developpeur extends AbstractForm
{
    public function init()
    {
        $this->add(new Fieldset\WebIdentityFieldset());
        $this->add(new Fieldset\PHPKnowledge());
        $this->add(new Fieldset\SocialLinks());
        $this->add(new Element\Button\Add());
    }
}