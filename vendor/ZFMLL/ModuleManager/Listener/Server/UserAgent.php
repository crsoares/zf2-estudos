<?php

namespace ZFMLL\ModuleManager\Listener\Server;

use ZFMLL\ModuleManager\Listener\AbstractListener;

class UserAgent extends AbstractListener
{
	public function authorizeModule($moduleName)
	{
		if (isset($this->config['static'])) {
			return @$_SERVER['HTTP_USER_AGENT'] == $this->config['static'];
		} else if (isset($this->config['regex'])) {
			return preg_match('(^' . $this->config['regex'] . '$)', @$_SERVER['HTTP_USER_AGENT']);
		} else if (isset($this->config['is_robot'])) {
			return (boolean)$this->config['is_robot'] === (boolean)preg_match('#(bot|spider|crawler|yahoo)#', @$_SERVER['HTTP_USER_AGENT']);
		}
		return false;
	}
}