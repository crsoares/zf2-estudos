<?php

namespace Application\Model\Table;

class SlideshareTable extends AbstractTable
{   
    public function fetchAllLastValid($lang='fr', $limit=10)
    {
        $select = $this->getSql()->select()
                        ->join('language','language.id = slideshare.language')
                        ->where(array('moderate'=>1))
                        ->order('date DESC');
        if($lang!='all') {
            $select->where(array('language.code'=>$lang));
        }
        
        $select->limit($limit)->offset(0);
        
        return $this->selectWith($select);
    }
}