<?php

namespace Application\Model\Table;

use Zend\Db\Sql\Predicate\Like;

class TweetTable extends AbstractTable
{
	public function addTweet($id, $text, $user, $language)
	{
		$data = array(
			'id' => $id,
			'text' => $text,
			'user' => $user,
			'language' => $language,
			'moderate' => 0
		);
		$this->insert($data);
	}

	public function getQueryLastValid()
	{
		$select = $this->getSql()->select();
			->columns(array('date', 'user', 'text'))
			->join('language', 'language.id = tweet.language')
			->where(array('moderate' => 1))
			->order('data DESC');

		return $select;
	}
}