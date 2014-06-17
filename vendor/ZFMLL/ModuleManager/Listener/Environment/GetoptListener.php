<?php

use ZFMLL\ModuleManager\Listener\Environment;

use ZFML\ModuleManager\Listener\AbstractListener;
use ZFML\ModuleManager\Listener\EnvironmentHandler;
use Zend\Console\Getopt;

class GetoptListener extends AbstractListener
{
	protected $getopt;

	protected $isBad = false;

	public function authorizeModule($moduleName)
	{
		if (strtolower(ini_get('register_argc_argv')) != 'on' && ini_get('register_argc_argv') != 1) {
			return false;
		}

		$numOpt = 0;
		foreach($this->config as $config => $comment) {
			if (preg_match('#^[^=]+=#', $config)) {
				$numOpt++;
			}
		}

		return count($this->getGetopt()->getOptions()) >= $numOpt;
	}

	public function getGetopt()
	{
		if (!$this->getopt) {
			$this->getopt = @new Getopt($this->config, null, array(Getopt::CONFIG_FREEFORM_FLAGS => true));
			$this->getopt->parse();
		}
		return $this->getopt;
	}
}