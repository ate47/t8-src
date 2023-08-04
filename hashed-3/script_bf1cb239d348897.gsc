// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\wz_common_fixup.gsc;
#using scripts\mp_common\item_world_fixup.gsc;

#namespace namespace_46ccc531;

/*
	Name: __init__
	Namespace: namespace_46ccc531
	Checksum: 0x5484187F
	Offset: 0x98
	Size: 0x14
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__()
{
	function_63ad593a();
}

/*
	Name: main
	Namespace: namespace_46ccc531
	Checksum: 0x831CE56D
	Offset: 0xB8
	Size: 0x24
	Parameters: 1
	Flags: Event
*/
event main(eventstruct)
{
	level thread function_b9962a73();
}

/*
	Name: function_b9962a73
	Namespace: namespace_46ccc531
	Checksum: 0x3506393D
	Offset: 0xE8
	Size: 0xF8
	Parameters: 0
	Flags: Linked
*/
function function_b9962a73()
{
	if(isdefined(getgametypesetting(#"wzspectrerising")) && getgametypesetting(#"wzspectrerising"))
	{
		chests = getdynentarray("world_ammo_stash_blackjack");
		foreach(dynent in chests)
		{
			add_helico(dynent, #"hash_6a582b37e8f152b4");
		}
	}
}

/*
	Name: function_63ad593a
	Namespace: namespace_46ccc531
	Checksum: 0x4A634615
	Offset: 0x1E8
	Size: 0x1BC
	Parameters: 0
	Flags: Linked
*/
function function_63ad593a()
{
	var_a12b4736 = &item_world_fixup::function_96ff7b88;
	var_d2223309 = &item_world_fixup::function_261ab7f5;
	var_b5014996 = &item_world_fixup::function_19089c75;
	var_87d0eef8 = &item_world_fixup::remove_item;
	var_74257310 = &item_world_fixup::add_item_replacement;
	var_f8a4c541 = &item_world_fixup::function_6991057;
	var_edfbccd0 = &item_world_fixup::function_e70fa91c;
	if(isdefined(getgametypesetting(#"wzspectrerising")) && getgametypesetting(#"wzspectrerising"))
	{
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"blackjack_ammo_stash_parent_placeholder", #"hash_58c8b457cdf56278");
		if(isdefined(getgametypesetting(#"wzenablespectregrenade")) && getgametypesetting(#"wzenablespectregrenade"))
		{
			wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"smoke_grenade_wz_item", #"spectre_grenade_wz_item");
		}
	}
}

