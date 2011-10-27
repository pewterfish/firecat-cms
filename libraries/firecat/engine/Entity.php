<?php
class Entity extends Model
{
	# name
	function __construct()
	{
	}

	function get_inventory()
	{
		/* paris one-to-one here */
		return $this->has_one('Inventory');
	}	

};
?>
