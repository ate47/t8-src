// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\wz_common_fixup.csc;
#using scripts\mp_common\item_world_fixup.csc;

#namespace namespace_1bfb9327;

/*
	Name: __init__
	Namespace: namespace_1bfb9327
	Checksum: 0x43575EF3
	Offset: 0x78
	Size: 0x14
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__()
{
	function_a38f195f();
}

/*
	Name: function_a38f195f
	Namespace: namespace_1bfb9327
	Checksum: 0xD9F49203
	Offset: 0x98
	Size: 0x664
	Parameters: 0
	Flags: Linked
*/
function function_a38f195f()
{
	var_a12b4736 = &item_world_fixup::function_96ff7b88;
	var_d2223309 = &item_world_fixup::function_261ab7f5;
	var_b5014996 = &item_world_fixup::function_19089c75;
	var_87d0eef8 = &item_world_fixup::remove_item;
	var_74257310 = &item_world_fixup::function_6da5e673;
	var_f8a4c541 = &item_world_fixup::function_6991057;
	if(isdefined(getgametypesetting(#"hash_2e25d475b271a700")) && getgametypesetting(#"hash_2e25d475b271a700"))
	{
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"smoke_grenade_wz_item", #"hash_56e573d15c6402bc");
	}
	if(isdefined(getgametypesetting(#"wzgreeneyes")) && getgametypesetting(#"wzgreeneyes"))
	{
		maxteamplayers = (isdefined(getgametypesetting(#"maxteamplayers")) ? getgametypesetting(#"maxteamplayers") : 1);
		if(maxteamplayers == 1)
		{
			item_world_fixup::function_2749fcc3(#"hash_47a63bc4a605b45f", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_779cba7072600ad1", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_75cc919e81dc8b19", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_6056a687e77f7229", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_550872d1d1938f94", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"zombie_stash_graveyard_ee", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_a211476d10546c", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_7d028af90dad72ae", #"hash_253b37ca99acac09", #"hash_4fcc3b0eb71962f5", 2147483647);
		}
		else if(maxteamplayers == 2)
		{
			item_world_fixup::function_2749fcc3(#"hash_47a63bc4a605b45f", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_779cba7072600ad1", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_75cc919e81dc8b19", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_6056a687e77f7229", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_550872d1d1938f94", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"zombie_stash_graveyard_ee", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_a211476d10546c", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
			item_world_fixup::function_2749fcc3(#"hash_7d028af90dad72ae", #"hash_253b37ca99acac09", #"hash_6da9aef11a9507fe", 2147483647);
		}
	}
}

