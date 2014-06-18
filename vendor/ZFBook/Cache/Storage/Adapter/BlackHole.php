<?php

namespace ZFBook\Cache\Storage\Adapter;

use Zend\Cache\Storage\Adapter\AbstractAdapter;

class BlackHole extends AbstractAdapter
{
    protected $stmtGlob = null;
    
    protected $stmtMatch = null;
    
    protected $lastInfoId = null;
    
    protected $lastInfo = null;
    
    public function setOptions($options)
    {
        return parent::setOptions($options);
    }
    
    public function getOptions()
    {
        return $this->options;
    }
    
    public function getItem($key, & $success = null, & $casToken = null)
    {
        return false;
    }
    
    public function getItems(array $keys)
    {
        return array();
    }
    
    protected function internalGetItem(& $normalizedKey, & $success = null, & $casToken = null)
    {
    }
    
    public function hasItem($key)
    {
        return false;
    }
    
    public function hasItems(array $keys)
    {
        return false;
    }
    
    protected function internalHasItem(& $normalizedKey)
    {
        return false;
    }
    
    public function getMetadata($key)
    {
        return false;
    }
    
    public function getMetadatas(array $keys)
    {
        return false;
    }
    
    protected function internalGetMetadata(& $normalizedKey)
    {
        return false;
    }
    
    public function setItem($key, $value)
    {
        return false;
    }
    
    public function setItems(array $keyValuePairs)
    {
        return false;
    }
    
    public function addItem($key, $value)
    {
        return false;
    }
    
    public function addItems(array $keyValuePairs)
    {
        return false;
    }
    
    public function replaceItem($key, $value)
    {
        return false;
    }
    
    public function replaceItems(array $keyValuePairs)
    {
        return false;
    }
    
    protected function internalSetItem(& $normalizedKey, & $value)
    {
        return false;
    }
    
    protected function internalSetItems(array & $normalizedKeyValuePairs)
    {
        return false;
    }
    
    public function checkAndSetItem($token, $key, $value)
    {
        return false;
    }
    
    protected function internalCheckAndSetItem(& $token, & $normalizedKey, & $value)
    {
        return false;
    }

    public function touchItem($key)
    {
        return false;
    }

    public function touchItems(array $keys)
    {
        return false;
    }
    
    protected function internalTouchItem(& $normalizedKey)
    {
        return false;
    }
    
    public function removeItem($key)
    {
        return false;
    }

    public function removeItems(array $keys)
    {
        return false;
    }
    
    protected function internalRemoveItem(& $normalizedKey)
    {
        return false;
    }
}
