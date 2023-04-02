// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_47fb62300ac0bd60;
#using scripts\mp_common\item_world.gsc;
#using script_cb32d07c95e5628;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\flagsys_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\values_shared.gsc;

#namespace namespace_68b18f4c;

/*
	Name: __init__system__
	Namespace: namespace_68b18f4c
	Checksum: 0xE0D26FF7
	Offset: 0xE0
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"hash_5bdb62b16cf7d51e", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_68b18f4c
	Checksum: 0x3DBFA54F
	Offset: 0x128
	Size: 0x124
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	level.var_f64d56a1 = (isdefined(getgametypesetting(#"hash_11b79ec2ffb886c8")) ? getgametypesetting(#"hash_11b79ec2ffb886c8") : 0) || (isdefined(getgametypesetting(#"hash_697d65a68cc6c6f1")) ? getgametypesetting(#"hash_697d65a68cc6c6f1") : 0);
	nixie_tube_cage = getdynent("nixie_tube_cage");
	if(!(isdefined(level.var_f64d56a1) && level.var_f64d56a1))
	{
		if(isdefined(nixie_tube_cage))
		{
			function_e2a06860(nixie_tube_cage, 3);
		}
	}
	level thread function_5f309cfb();
}

/*
	Name: function_5f309cfb
	Namespace: namespace_68b18f4c
	Checksum: 0x6CD5D4DD
	Offset: 0x258
	Size: 0x8C
	Parameters: 0
	Flags: Linked
*/
function function_5f309cfb()
{
	level flagsys::wait_till(#"hash_507a4486c4a79f1d");
	waitframe(1);
	nixie_tube_cage = getdynent("nixie_tube_cage");
	if(!(isdefined(level.var_f64d56a1) && level.var_f64d56a1))
	{
		if(isdefined(nixie_tube_cage))
		{
			function_e2a06860(nixie_tube_cage, 3);
		}
	}
}

