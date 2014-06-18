<?php

namespace Application\Form\Form;

use Application\Form\Element;

class Tutoriel extends AbstractForm
{
    public function init()
    {
        $this->add(new Element\Text\Title());
        $this->add(new Element\Text\Description());
    }
}