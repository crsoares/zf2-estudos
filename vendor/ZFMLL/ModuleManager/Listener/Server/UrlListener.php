<?php

namespace ZFMLL\ModuleManager\Listener\Server;

use ZFMLL\ModuleManager\Listener\AbstractListener;

class UrlListener extends AbstractListener
{
	public function authorizeModule($moduleName)
	{
		if (isset($this->config['static'])) {
			return @$_SERVER['REQUEST_URI'] == $this->config['static'];
		} else if(isset($this->config['regex'])){
			return preg_match('(^' . $this->config['regex'] . '$)', @$_SERVER['REQUEST_URI']);
		}
		return false;
	}
}