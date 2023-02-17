// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_generic_commander.gsc;
#using scripts\core_common\ai\planner_commander.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using script_522aeb6ae906391e;
#using script_60f1433e7c9a921c;
#using scripts\core_common\ai\planner_commander_utility.gsc;
#using script_7981a30041d0325b;

#namespace namespace_7684cced;

/*
	Name: function_cdaddee
	Namespace: namespace_7684cced
	Checksum: 0x23485C29
	Offset: 0x138
	Size: 0x32
	Parameters: 1
	Flags: Linked, Private
*/
function private function_cdaddee(team)
{
	planner = plannerutility::createplannerfromasset("mp_tdm_commander.ai_htn");
	return planner;
}

/*
	Name: createcommander
	Namespace: namespace_7684cced
	Checksum: 0x9A3B4B0E
	Offset: 0x178
	Size: 0x118
	Parameters: 1
	Flags: Linked
*/
function createcommander(team)
{
	commander = plannercommanderutility::createcommander(team, function_cdaddee(team), namespace_95c1f0c2::function_ce59625f(team));
	plannergenericcommander::commanderdaemons(commander);
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreBotPresence");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreForceGoal");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreTeam");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreAge", [#"maxage":15000]);
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreAlive");
	return commander;
}

