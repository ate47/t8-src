// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\lui_shared.gsc;

class cmulti_stage_friendly_lockon : cLUIelem
{
	var var_47e79fc;

	/*
		Name: constructor
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0xF76C25B6
		Offset: 0x218
		Size: 0x14
		Parameters: 0
		Flags: Linked, 8
	*/
	constructor()
	{
	}

	/*
		Name: destructor
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0xA199B85D
		Offset: 0x3C8
		Size: 0x14
		Parameters: 0
		Flags: Linked, 16, 128
	*/
	destructor()
	{
	}

	/*
		Name: set_targetState
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0xDC029789
		Offset: 0x380
		Size: 0x3C
		Parameters: 2
		Flags: Linked
	*/
	function set_targetState(player, value)
	{
		player clientfield::function_9bf78ef8(var_47e79fc, "targetState", value);
	}

	/*
		Name: set_entNum
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0xDA6B036
		Offset: 0x338
		Size: 0x3C
		Parameters: 2
		Flags: Linked
	*/
	function set_entNum(player, value)
	{
		player clientfield::function_9bf78ef8(var_47e79fc, "entNum", value);
	}

	/*
		Name: close
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0x90A4B56E
		Offset: 0x308
		Size: 0x24
		Parameters: 1
		Flags: Linked
	*/
	function close(player)
	{
		cLUIelem::close_luielem(player);
	}

	/*
		Name: open
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0xC1E1978E
		Offset: 0x2B8
		Size: 0x44
		Parameters: 2
		Flags: Linked
	*/
	function open(player, persistent = 0)
	{
		cLUIelem::open_luielem(player, "multi_stage_friendly_lockon", persistent);
	}

	/*
		Name: setup_clientfields
		Namespace: cmulti_stage_friendly_lockon
		Checksum: 0x6EF53E34
		Offset: 0x238
		Size: 0x74
		Parameters: 1
		Flags: Linked
	*/
	function setup_clientfields(uid)
	{
		cLUIelem::setup_clientfields(uid);
		cLUIelem::add_clientfield("entNum", 1, 10, "int");
		cLUIelem::add_clientfield("targetState", 1, 3, "int");
	}

}

#namespace multi_stage_friendly_lockon;

/*
	Name: register
	Namespace: multi_stage_friendly_lockon
	Checksum: 0xFC82B5A
	Offset: 0xE0
	Size: 0x40
	Parameters: 1
	Flags: None
*/
function register(uid)
{
	elem = new cmulti_stage_friendly_lockon();
	[[ elem ]]->setup_clientfields(uid);
	return elem;
}

/*
	Name: open
	Namespace: multi_stage_friendly_lockon
	Checksum: 0x1066BC3D
	Offset: 0x128
	Size: 0x38
	Parameters: 2
	Flags: None
*/
function open(player, persistent = 0)
{
	[[ self ]]->open(player, persistent);
}

/*
	Name: close
	Namespace: multi_stage_friendly_lockon
	Checksum: 0xD008E743
	Offset: 0x168
	Size: 0x1C
	Parameters: 1
	Flags: None
*/
function close(player)
{
	[[ self ]]->close(player);
}

/*
	Name: is_open
	Namespace: multi_stage_friendly_lockon
	Checksum: 0xEA2C7EA3
	Offset: 0x190
	Size: 0x1A
	Parameters: 1
	Flags: None
*/
function is_open(player)
{
	return [[ self ]]->function_7bfd10e6(player);
}

/*
	Name: set_entNum
	Namespace: multi_stage_friendly_lockon
	Checksum: 0xA06364F2
	Offset: 0x1B8
	Size: 0x28
	Parameters: 2
	Flags: None
*/
function set_entNum(player, value)
{
	[[ self ]]->set_entNum(player, value);
}

/*
	Name: set_targetState
	Namespace: multi_stage_friendly_lockon
	Checksum: 0x9BDB8BAD
	Offset: 0x1E8
	Size: 0x28
	Parameters: 2
	Flags: None
*/
function set_targetState(player, value)
{
	[[ self ]]->set_targetState(player, value);
}

