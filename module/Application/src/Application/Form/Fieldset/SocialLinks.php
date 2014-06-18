<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldset;
use Application\Form\Element\Social;

class SocialLinks extends AbstractFieldset
{
    public function __construct($name = null)
    {
        parent::__construct('social_links');
        $this->add(new Social\TwitterLink());
        $this->add(new Social\ViadeoLink());
        $this->add(new Social\LinkedinLink());
    }
}
