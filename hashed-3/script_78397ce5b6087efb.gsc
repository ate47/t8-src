// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_16b1c195c0b9a9c;
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_commander.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using scripts\core_common\ai\planner_commander_utility.gsc;

#namespace namespace_ca51367f;

/*
	Name: function_ce59625f
	Namespace: namespace_ca51367f
	Checksum: 0x64231435
	Offset: 0xA8
	Size: 0x32
	Parameters: 1
	Flags: Linked
*/
function function_ce59625f(team)
{
	planner = plannerutility::createplannerfromasset("mp_sd_squad.ai_htn");
	return planner;
}

