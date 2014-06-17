<?php

namespace ZFMLL\ModuleManager\Listener\Environment;

use ZFMLL\ModuleManager\Listener\AbstractListener;
use ZFMLL\ModuleManager\Listener\EnvironmentHandler;

class SapiListener extends AbstractListener
{
	public function authorizeModule($moduleName)
	{
		return php_sapi_name() === $this->config;
	}
}