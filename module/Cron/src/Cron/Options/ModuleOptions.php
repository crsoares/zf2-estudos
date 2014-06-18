<?php

namespace Cron\Options;

use Zend\Stdlib\AbstractOptions;

class ModuleOptions extends AbstractOptions
{
    protected $twitterOptions;
    
    public function getTwitterOptions()
    {
        return $this->twitterOptions;
    }
    
    public function setTwitterOptions($twitterOptions)
    {
        $this->twitterOptions = new TwitterOptions($twitterOptions);
        return $this;
    }
}