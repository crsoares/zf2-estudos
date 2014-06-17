<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldsert;
use Application\Form\Element\Personnal;

class WebIdentityFieldsert extends AbstractFiledset
{
	public function __construct($name = null)
	{
		parent::__construct('web_identity');
		$this->add(new Personnal\Firstname());
		$this->add(new Personnal\Name());
		$this->add(new Personnal\Email());
	}
}