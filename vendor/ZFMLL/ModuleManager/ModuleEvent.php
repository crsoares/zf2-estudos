<?php

namespace ZFMLL\ModuleManger;

use Zend\ModuleManager\ModuleEvent as BaseModuleEvent;

class ModuleEvent extends BaseModuleEvent
{
	CONST EVENT_LOAD_MODULE_AUTH = 'loadModuleAuth';
	CONST EVENT_LOAD_MODULES_AUTH = 'loadModulesAuth';
}