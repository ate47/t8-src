// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\zm_common\zm_perks.gsc;

#namespace zm_perk_mod_ethereal_razor;

/*
	Name: __init__system__
	Namespace: zm_perk_mod_ethereal_razor
	Checksum: 0x295E85D9
	Offset: 0x98
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"zm_perk_mod_ethereal_razor", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: zm_perk_mod_ethereal_razor
	Checksum: 0x45EBEA44
	Offset: 0xE0
	Size: 0x14
	Parameters: 0
	Flags: Linked
*/
function __init__()
{
	function_a7cdda99();
}

/*
	Name: function_a7cdda99
	Namespace: zm_perk_mod_ethereal_razor
	Checksum: 0xE62DEBF6
	Offset: 0x100
	Size: 0x94
	Parameters: 0
	Flags: Linked
*/
function function_a7cdda99()
{
	zm_perks::function_7f42e14e(#"hash_7036ce8dafbf1f81", "mod_ethereal_razor", #"perk_ethereal_razor", #"specialty_etherealrazor", 5500);
	zm_perks::register_perk_threads(#"hash_7036ce8dafbf1f81", &function_5b26f1e3, &function_98c3f271);
}

/*
	Name: function_5b26f1e3
	Namespace: zm_perk_mod_ethereal_razor
	Checksum: 0x80F724D1
	Offset: 0x1A0
	Size: 0x4
	Parameters: 0
	Flags: Linked
*/
function function_5b26f1e3()
{
}

/*
	Name: function_98c3f271
	Namespace: zm_perk_mod_ethereal_razor
	Checksum: 0x71902700
	Offset: 0x1B0
	Size: 0x24
	Parameters: 4
	Flags: Linked
*/
function function_98c3f271(b_pause, str_perk, str_result, n_slot)
{
}

