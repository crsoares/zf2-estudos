<?php

namespace Cron\Options;

use Zend\Stdlib\AbstractOptions;

class TwitterOptions extends AbstractOptions
{
    protected $queries;
    
    protected $languages;
    
    public function getQueries()
    {
        return $this->queries;
    }
    
    public function setQueries($queries)
    {
        $this->queries = $queries;
        return $this;
    }
    
    public function getLanguages()
    {
        return $this->languages;
    }
    
    public function setLanguages($languages)
    {
        $this->languages = $languages;
        return $this;
    }
}