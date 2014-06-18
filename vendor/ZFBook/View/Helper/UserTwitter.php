<?php

namespace ZFBook\View\Helper;

use Zend\View\Helper\AbstractHelper;

class UserTwitter extends AbstractHelper
{
    protected $coreTeam = array(
        'weierophinney', /* Matthew Weier O'Phinney */
        'ezimuel', /* Enrico Zimuel */
        'ralphschindler', /* Ralph Schindler */
        'evandotpro', /* Evan Coury */
        'akrabat', /* Rob Allen */
    );
    
    protected $zfcontributors = array(
        'bittarman', /* Ryan Mauger */
        'padraicb', /* Pádraic Brady */
        'dasprid', /* Ben Scholzen */
        'wadearnold', /* Wade Arnold */
        'blanchonvincent', /* Vincent Blanchon */
        'mikaelkael', /* Mickael Perraud */
        'tjohns', /* Trevor Johns */
        'beberlei', /* Benjamin Eberlei */
        'freeaqingme', /* Dolf Schimmel */
        'kokxie', /* Pieter Kokx */
    );
    
    protected $phpcontributors = array(
        'rasmus', /* Rasmus Lerdorf */
        'derickr', /* Derick Rethans */
        'julienpauli,' /* Julien Pauli */
    );
    
    protected $phpdoccontributors = array(
        'yannicktorres', /* Yannick Torres */
        'fredericblanc', /* Frederic Blanc */
        'w_a_s_t_e', /* Guillaume Plessis */
    );
    
    public function __invoke($username)
    {
        $display = '';
        $username = strtolower($username);
        if(in_array($username,$this->coreTeam))
        {
            $display = '<span class="label label-important">Core team</span> ';
        }
        else if(in_array($username,$this->zfcontributors))
        {
            $display = '<span class="label label-success">ZF contributor</span> ';
        }
        else if(in_array($username,$this->phpcontributors))
        {
            $display = '<span class="label label-inverse">php contributor</span> ';
        }
        else if(in_array($username,$this->phpdoccontributors))
        {
            $display = '<span class="label label-info">php doc contributor</span> ';
        }
        
        return $display . '<a href="http://twitter.com/#!/'.$username.'" target="_blank">@'.$username.'</a>';
    }
}