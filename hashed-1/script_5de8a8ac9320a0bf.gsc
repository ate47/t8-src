// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\lui_shared.csc;

class cdebug_center_screen : cLUIelem
{

	/*
		Name: constructor
		Namespace: cdebug_center_screen
		Checksum: 0xC86E7622
		Offset: 0x1A8
		Size: 0x14
		Parameters: 0
		Flags: Linked, 8
	*/
	constructor()
	{
	}

	/*
		Name: destructor
		Namespace: cdebug_center_screen
		Checksum: 0xC1AB16F3
		Offset: 0x290
		Size: 0x14
		Parameters: 0
		Flags: Linked, 16, 128
	*/
	destructor()
	{
	}

	/*
		Name: open
		Namespace: cdebug_center_screen
		Checksum: 0x8610FEF8
		Offset: 0x258
		Size: 0x2C
		Parameters: 1
		Flags: Linked
	*/
	function open(localclientnum)
	{
		cLUIelem::open(localclientnum, #"debug_center_screen");
	}

	/*
		Name: function_fa582112
		Namespace: cdebug_center_screen
		Checksum: 0x9616BDB7
		Offset: 0x228
		Size: 0x24
		Parameters: 1
		Flags: Linked
	*/
	function function_fa582112(localclientnum)
	{
		cLUIelem::function_fa582112(localclientnum);
	}

	/*
		Name: register_clientside
		Namespace: cdebug_center_screen
		Checksum: 0xB49B3905
		Offset: 0x1F8
		Size: 0x24
		Parameters: 1
		Flags: Linked
	*/
	function register_clientside(uid)
	{
		cLUIelem::register_clientside(uid);
	}

	/*
		Name: setup_clientfields
		Namespace: cdebug_center_screen
		Checksum: 0x83F875FE
		Offset: 0x1C8
		Size: 0x24
		Parameters: 1
		Flags: Linked
	*/
	function setup_clientfields(uid)
	{
		cLUIelem::setup_clientfields(uid);
	}

}

#namespace debug_center_screen;

/*
	Name: register
	Namespace: debug_center_screen
	Checksum: 0xEB27F52C
	Offset: 0xA0
	Size: 0x40
	Parameters: 1
	Flags: Linked
*/
function register(uid)
{
	elem = new cdebug_center_screen();
	[[ elem ]]->setup_clientfields(uid);
	return elem;
}

/*
	Name: register_clientside
	Namespace: debug_center_screen
	Checksum: 0x4A9FF3C9
	Offset: 0xE8
	Size: 0x40
	Parameters: 1
	Flags: None
*/
function register_clientside(uid)
{
	elem = new cdebug_center_screen();
	[[ elem ]]->register_clientside(uid);
	return elem;
}

/*
	Name: open
	Namespace: debug_center_screen
	Checksum: 0x2C9AA8B
	Offset: 0x130
	Size: 0x1C
	Parameters: 1
	Flags: None
*/
function open(player)
{
	[[ self ]]->open(player);
}

/*
	Name: close
	Namespace: debug_center_screen
	Checksum: 0xAC727145
	Offset: 0x158
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
	Namespace: debug_center_screen
	Checksum: 0x50039CAE
	Offset: 0x180
	Size: 0x1A
	Parameters: 1
	Flags: None
*/
function is_open(localclientnum)
{
	return [[ self ]]->is_open(localclientnum);
}

