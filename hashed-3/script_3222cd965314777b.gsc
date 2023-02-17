// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_generic_commander.gsc;
#using scripts\core_common\ai\planner_commander.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using script_522aeb6ae906391e;
#using script_60f1433e7c9a921c;
#using scripts\core_common\ai\planner_commander_utility.gsc;
#using script_78397ce5b6087efb;

#namespace namespace_621e1e77;

/*
	Name: function_cdaddee
	Namespace: namespace_621e1e77
	Checksum: 0x676CB0AD
	Offset: 0x158
	Size: 0x32
	Parameters: 1
	Flags: Linked, Private
*/
function private function_cdaddee(team)
{
	planner = plannerutility::createplannerfromasset("mp_sd_commander.ai_htn");
	return planner;
}

/*
	Name: createcommander
	Namespace: namespace_621e1e77
	Checksum: 0xAA9D228E
	Offset: 0x198
	Size: 0x1C0
	Parameters: 1
	Flags: Linked
*/
function createcommander(team)
{
	commander = plannercommanderutility::createcommander(team, function_cdaddee(team), namespace_ca51367f::function_ce59625f(team), (float(function_60d95f53()) / 1000) * 40, (float(function_60d95f53()) / 1000) * 100, 3, 3);
	plannergenericcommander::commanderdaemons(commander);
	plannercommanderutility::adddaemon(commander, "daemonSdBomb");
	plannercommanderutility::adddaemon(commander, "daemonSdBombZones");
	plannercommanderutility::adddaemon(commander, "daemonSdDefuseObj");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreBotPresence");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreForceGoal");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreTeam");
	plannercommanderutility::addsquadevaluator(commander, "commanderScoreAge", [#"maxage":6000]);
	return commander;
}

