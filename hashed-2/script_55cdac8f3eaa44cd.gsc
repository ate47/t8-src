// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_commander.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using scripts\core_common\ai\planner_commander_utility.gsc;
#using script_c5bc2e592d581d0;

#namespace namespace_42cba673;

/*
	Name: function_ce59625f
	Namespace: namespace_42cba673
	Checksum: 0xA1801263
	Offset: 0xA8
	Size: 0x32
	Parameters: 1
	Flags: Linked
*/
function function_ce59625f(team)
{
	planner = plannerutility::createplannerfromasset("zm_squad.ai_htn");
	return planner;
}

