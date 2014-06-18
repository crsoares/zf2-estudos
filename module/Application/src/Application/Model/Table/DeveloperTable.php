<?php

namespace Application\Model\Table;

class DeveloperTable extends AbstractTable
{   
    public function getQueryAllValid()
    {
        $select = $this->getSql()->select()
                    ->where(array('valid' => 1));
        
        return $select;
    }
    
    public function fetchAllValid()
    {
        $select = $this->getQueryAllValid();        
        return $this->selectWith($select);
    }
    
    public function fetchAllInWait()
    {
        $select = $this->getSql()->select()
                    ->where(array('valid' => 0));
        
        return $this->selectWith($select);
    }
    
    public function register($datas)
    {
        $data = array(
            'name' => $datas['web_identity']['name'],
            'email'  => $datas['web_identity']['email'],
            'is_php_5_certified'  => (boolean)$datas['php_knowledge']['php5certification'],
            'is_php_53_certified'  => (boolean)$datas['php_knowledge']['php53certification'],
            'is_php_zf1_certified'  => (boolean)$datas['php_knowledge']['zf1certification'],
            'viadeo'  => $datas['social_links']['viadeolink'],
            'linkedin'  => $datas['social_links']['linkedinlink'],
            'twitter'  => $datas['social_links']['twitterlink'],
            'valid'  => 0,
        );
        return $this->insert($data);
    }
}