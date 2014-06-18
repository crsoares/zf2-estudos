<?php

namespace Application\Form\Fieldset;

use Zend\Form\Fieldset;
use Zend\Form\ElementInterface;

class AbstractFieldset extends Fieldset
{
    public function add($elementOrFieldset, array $flags = array())
    {
        if ($elementOrFieldset instanceof ElementInterface
                && !$elementOrFieldset->getName()) {
            $name = self::formatName($elementOrFieldset);
            $elementOrFieldset->setName($name);
        }
        parent::add($elementOrFieldset, $flags);
    }

    public static function formatName(ElementInterface $element)
    {
        $classPart = preg_split('#\\\#', get_class($element));
        $name = array_pop($classPart);
        $name = strtolower($name);
        return $name;
    }
}