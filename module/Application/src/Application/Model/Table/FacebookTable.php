<?php

namespace Application\Model\Table;

class FacebookTable extends AbstractTable
{    
    public function fetchAllLast($limit = 10)
    {
        $select = $this->getSql()->select();
        $select->limit($limit)->offset(0);
        
        return $this->selectWith($select);
    }
}