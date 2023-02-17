// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_16b1c195c0b9a9c;
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_commander.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using scripts\core_common\ai\planner_commander_utility.gsc;

#namespace namespace_1aa9e8f3;

/*
	Name: function_ce59625f
	Namespace: namespace_1aa9e8f3
	Checksum: 0x10555CF7
	Offset: 0xB0
	Size: 0x32
	Parameters: 1
	Flags: Linked
*/
function function_ce59625f(team)
{
	planner = plannerutility::createplannerfromasset("mp_control_squad.ai_htn");
	return planner;
}

