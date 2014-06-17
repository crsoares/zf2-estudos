<?php

namespace ZFMLL\ModuleManager\Listener\Server;

use ZFMLL\ModuleManager\Listener\AbstractListener;

class HttpsListener extends AbstractListener
{
	public function authorizeModule($moduleName)
	{
		return @$_SERVER['HTTPS'] == $this->config;
	}
}