<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldset;
use Application\Form\Element\Personnal\Knowledge;

class PHPKnowledge extends AbstractFieldset
{
    public function __construct($name = null)
    {
        parent::__construct('php_knowledge');
        $this->add(new Knowledge\PHP53Certification());
        $this->add(new Knowledge\PHP5Certification());
        $this->add(new Knowledge\ZF1Certification());
    }
}
