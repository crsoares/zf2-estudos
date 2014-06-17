<?php

namespace ZFMLL\ModuleManager\Listener\Server;

use ZFMLL\ModuleManager\Listener\AbstractListener;

class HttpMethod extends AbstractListener
{
	public function authorizeModule($moduleName)
	{
		return strtolower($_SERVER['REQUEST_METHOD']) == strtolower($this->config);
	}
}