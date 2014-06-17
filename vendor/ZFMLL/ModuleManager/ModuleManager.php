<?php

use ZFMLL\ModuleManager;

use Zend\ModuleManager\ModuleManager as BaseModuleManager;

class ModuleManager extends BaseModuleManager
{
	public function loadModules()
	{
		$this->getEventManager()->trigger(ModuleEvent::EVENT_LOAD_MODULES_AUTH, $this, $this->getEvent());
		return parent::loadModules();
	}

	public function onLoadModulesAuth()
	{
		$modules = array();
		foreach ($this->getModules() as $moduleName) {
			$auth = $this->loadModuleAuth($moduleName);
			if($auth) {
				$modules[] = $moduleName;
			}
		}
		$this->setModules($modules);
	}
}