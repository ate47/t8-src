// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\core_common\bots\bot.gsc;
#using script_30e0aa25775a6927;
#using script_31e56101095f174b;
#using scripts\core_common\ai\planner_squad.gsc;
#using scripts\core_common\ai\planner_squad_utility.gsc;
#using script_522aeb6ae906391e;
#using scripts\core_common\ai\strategic_command.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\perks.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_5bb8bcd5;

/*
	Name: __init__system__
	Namespace: namespace_5bb8bcd5
	Checksum: 0xBA9E12BD
	Offset: 0xE0
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"hash_2e2ae8534f387ccf", &namespace_ed876ec::__init__, undefined, undefined);
}

#namespace namespace_ed876ec;

/*
	Name: __init__
	Namespace: namespace_ed876ec
	Checksum: 0x64970A4E
	Offset: 0x128
	Size: 0x33C
	Parameters: 0
	Flags: Linked, Private
*/
function private __init__()
{
	plannerutility::registerplannerapi(#"hash_711b9eb06d45dbbb", &function_e5a77501);
	plannerutility::registerplanneraction(#"hash_7590574799136eaf", &function_ac1b59c, &function_73f656f5, &function_29e16403, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_31b1a32cd1190293", &function_14c67eb3, &function_66cc90a, &function_e0bf989, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_552be54f85ea9d71", &function_2af9b775, &function_e442b780, &function_8015e63c, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_74c3e478ecfaaeca", &function_e057582f, &function_73f656f5, &function_29e16403, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_4a3f65a68af4f8af", &function_4f6a626d, &function_58d72c81, &function_6e8fe489, undefined);
	plannerutility::registerplanneraction(#"hash_6bda9193cf3ed07d", &function_557051df, &function_967b74c1, &function_20f747ae, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_13ea5298a7e5b3ef", &function_393b9c76, &function_6fe73720, &function_ec7dcff9, &function_a023ae49);
	plannerutility::registerplanneraction(#"hash_7e8d0cffd4b5daf5", &plannersquadutility::strategybotparam, &function_8e40731d, &function_8030d0d2, &function_a023ae49);
	/#
		level thread debug_setup();
	#/
}

/*
	Name: function_37d90686
	Namespace: namespace_ed876ec
	Checksum: 0x30DDCCF4
	Offset: 0x470
	Size: 0x2B0
	Parameters: 2
	Flags: Linked, Private
*/
function private function_37d90686(bot, path)
{
	var_3eecdd31 = 0;
	if(isdefined(path) && isdefined(path.pathpoints) && path.pathpoints.size > 0)
	{
		adjustedpath = [];
		segmentlength = 128;
		pathpointssize = path.pathpoints.size;
		currentdistance = 0;
		currentpoint = path.pathpoints[0];
		adjustedpath[adjustedpath.size] = currentpoint;
		for(index = 1; index < pathpointssize; index++)
		{
			nextpoint = path.pathpoints[index];
			distancetonextpoint = distance2d(currentpoint, nextpoint);
			totaldistance = currentdistance + distancetonextpoint;
			if(totaldistance < segmentlength)
			{
				currentdistance = currentdistance + distancetonextpoint;
				currentpoint = nextpoint;
				continue;
				continue;
			}
			if(totaldistance >= segmentlength)
			{
				distancetonextadjusted = segmentlength - currentdistance;
				ratiotonextadjusted = distancetonextadjusted / distancetonextpoint;
				currentpoint = lerpvector(currentpoint, nextpoint, ratiotonextadjusted);
				adjustedpath[adjustedpath.size] = currentpoint;
				currentdistance = 0;
				index--;
			}
		}
		adjustedpath[adjustedpath.size] = path.pathpoints[pathpointssize - 1];
		var_3eecdd31 = 0;
		foreach(point in adjustedpath)
		{
			var_3eecdd31 = var_3eecdd31 + pow(bot getenemiesinradius(point, 128).size, 1.5);
		}
	}
	return var_3eecdd31;
}

/*
	Name: function_3e6c9e50
	Namespace: namespace_ed876ec
	Checksum: 0x2B22BFAB
	Offset: 0x728
	Size: 0xA4
	Parameters: 1
	Flags: Linked, Private
*/
function private function_3e6c9e50(weapon)
{
	if(isdefined(weapon.firetype) && weapon.firetype == #"single shot")
	{
		if(weapon.clipsize < 20)
		{
			return 0.5;
		}
		return 0.8;
	}
	if(weapon.firetype === "Burst")
	{
		if(weapon.clipsize < 20)
		{
			return 0.65;
		}
		return 0.8;
	}
	return 1;
}

/*
	Name: function_48d6c189
	Namespace: namespace_ed876ec
	Checksum: 0x80BB54E8
	Offset: 0x7D8
	Size: 0x10A
	Parameters: 1
	Flags: Linked, Private
*/
function private function_48d6c189(weapon)
{
	var_f8e2456f = (weapon.clipsize * weapon.firetime) + weapon.reloadtime;
	if(isdefined(weapon.firetype) && weapon.firetype == #"single shot")
	{
		var_f8e2456f = var_f8e2456f + (weapon.clipsize * 0.5);
	}
	if(var_f8e2456f <= 0)
	{
		return 0;
	}
	var_f01cee59 = 1 / var_f8e2456f;
	var_2a27ca05 = (weapon.clipsize * function_5af8e31c(weapon)) * function_3e6c9e50(weapon);
	damagepersecond = var_2a27ca05 * var_f01cee59;
	return damagepersecond;
}

/*
	Name: function_5af8e31c
	Namespace: namespace_ed876ec
	Checksum: 0x6975103C
	Offset: 0x8F0
	Size: 0x16
	Parameters: 1
	Flags: Linked, Private
*/
function private function_5af8e31c(weapon)
{
	return weapon.maxdamage;
}

/*
	Name: function_1b0a9309
	Namespace: namespace_ed876ec
	Checksum: 0x3E679BF3
	Offset: 0x910
	Size: 0x6A
	Parameters: 1
	Flags: Linked, Private
*/
function private function_1b0a9309(bot)
{
	currentweapon = bot getcurrentweapon();
	ammo = bot getammocount(currentweapon);
	return function_8cfcffa3(bot, currentweapon, ammo);
}

/*
	Name: function_8cfcffa3
	Namespace: namespace_ed876ec
	Checksum: 0x2A6E0B17
	Offset: 0x988
	Size: 0x126
	Parameters: 3
	Flags: Linked, Private
*/
function private function_8cfcffa3(bot, weapon, ammo = undefined)
{
	/#
		assert(isbot(bot));
	#/
	/#
		assert(isweapon(weapon));
	#/
	ammo = (isdefined(ammo) ? ammo : weapon.maxammo + weapon.clipsize);
	var_688479c = ammo * function_5af8e31c(weapon);
	damagepersecond = function_48d6c189(weapon);
	if(damagepersecond <= 0 || var_688479c <= 0)
	{
		return 0;
	}
	return (damagepersecond * 2) + (var_688479c * 0.05);
}

/*
	Name: _paramshasbots
	Namespace: namespace_ed876ec
	Checksum: 0xDC2BEF89
	Offset: 0xAB8
	Size: 0x92
	Parameters: 1
	Flags: Linked, Private
*/
function private _paramshasbots(params)
{
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			return true;
		}
	}
	return false;
}

/*
	Name: function_98118579
	Namespace: namespace_ed876ec
	Checksum: 0x31DE8986
	Offset: 0xB58
	Size: 0x1E2
	Parameters: 1
	Flags: Linked, Private
*/
function private function_98118579(planner)
{
	params = spawnstruct();
	params.bots = [];
	params.botpositions = [];
	params.var_3ff64dd6 = undefined;
	foreach(botinfo in planner::getblackboardattribute(planner, "doppelbots"))
	{
		bot = botinfo[#"__unsafe__"][#"bot"];
		if(strategiccommandutility::isvalidbot(bot))
		{
			botposition = getclosestpointonnavmesh(bot.origin, 200);
			if(isdefined(botposition))
			{
				params.botpositions[params.botpositions.size] = botposition;
			}
			params.bots[params.bots.size] = bot;
			if(!isdefined(params.var_3ff64dd6) || bot.score < params.var_3ff64dd6)
			{
				params.var_3ff64dd6 = bot.score;
			}
		}
	}
	if(!isdefined(params.var_3ff64dd6))
	{
		params.var_3ff64dd6 = 0;
	}
	return params;
}

/*
	Name: function_5cc53671
	Namespace: namespace_ed876ec
	Checksum: 0x2DAD57C1
	Offset: 0xD48
	Size: 0x6A
	Parameters: 1
	Flags: Linked, Private
*/
function private function_5cc53671(bot)
{
	if(isdefined(bot) && isbot(bot))
	{
		bot setgoal(bot.origin);
		bot.goalradius = 512;
		bot.goalheight = 100;
	}
}

/*
	Name: function_d6d5e252
	Namespace: namespace_ed876ec
	Checksum: 0xE00007E2
	Offset: 0xDC0
	Size: 0xA2
	Parameters: 2
	Flags: Linked, Private
*/
function private function_d6d5e252(bot, altar)
{
	/#
		assert(isbot(bot));
	#/
	/#
		assert(isstruct(altar));
	#/
	specialty = bot.var_c27f1e90[altar.script_int];
	return bot perks::perk_hasperk(specialty);
}

/*
	Name: function_a023ae49
	Namespace: namespace_ed876ec
	Checksum: 0xFC46FF2A
	Offset: 0xE70
	Size: 0x90
	Parameters: 2
	Flags: Linked, Private
*/
function private function_a023ae49(planner, params)
{
	foreach(bot in params.bots)
	{
		function_5cc53671(bot);
	}
}

/*
	Name: function_66cc90a
	Namespace: namespace_ed876ec
	Checksum: 0x23ED94D9
	Offset: 0xF08
	Size: 0x18A
	Parameters: 2
	Flags: Linked, Private
*/
function private function_66cc90a(planner, params)
{
	if(!isdefined(params.altar) || !_paramshasbots(params))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			altar = params.altar[#"__unsafe__"][#"altar"];
			var_8d32cef2 = getclosestpointonnavmesh(params.altar[#"origin"], 200, bot getpathfindingradius());
			bot bot::set_interact(altar);
			bot setgoal(var_8d32cef2);
			bot.goalradius = 512;
		}
	}
	return 1;
}

/*
	Name: function_e0bf989
	Namespace: namespace_ed876ec
	Checksum: 0xD04452CA
	Offset: 0x10A0
	Size: 0xFE
	Parameters: 2
	Flags: Linked, Private
*/
function private function_e0bf989(planner, params)
{
	if(!isdefined(params.altar) || !_paramshasbots(params))
	{
		return 2;
	}
	altar = params.altar[#"__unsafe__"][#"altar"];
	if(!isdefined(altar) || altar.var_3468124.var_2977c27 != "on" || function_d6d5e252(params.bots[0], altar))
	{
		params.bots[0] bot::clear_interact();
		return 2;
	}
	return 3;
}

/*
	Name: function_14c67eb3
	Namespace: namespace_ed876ec
	Checksum: 0x69A501F
	Offset: 0x11A8
	Size: 0x696
	Parameters: 2
	Flags: Linked, Private
*/
function private function_14c67eb3(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	/#
		assert(isint(constants[#"affordability"]) || isfloat(constants[#"affordability"]), ("" + "") + "");
	#/
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_5f1842bf = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	altars = planner::getblackboardattribute(planner, #"zm_altars");
	if(!isdefined(altars))
	{
		altars = [];
	}
	foreach(var_509f4558 in altars)
	{
		if(isdefined(var_509f4558))
		{
			altar = var_509f4558[#"__unsafe__"][#"altar"];
			if(altar.var_3468124.var_2977c27 != "on")
			{
				continue;
			}
			if(function_d6d5e252(params.bots[0], altar))
			{
				continue;
			}
			perk = params.bots[0].var_c27f1e90[altar.script_int];
			if(!isdefined(perk) || !isdefined(level._custom_perks) || !isdefined(level._custom_perks[perk]))
			{
				continue;
			}
			customperk = level._custom_perks[perk];
			cost = customperk.cost;
			if(isfunctionptr(level._custom_perks[perk].cost))
			{
				cost = [[level._custom_perks[perk].cost]]();
			}
			if(cost > params.var_3ff64dd6 || (cost / params.var_3ff64dd6) > constants[#"affordability"])
			{
				continue;
			}
			closeenough = 1;
			foreach(botposition in params.botpositions)
			{
				if(distance2dsquared(var_509f4558[#"origin"], botposition) > distancesq)
				{
					closeenough = 0;
					break;
				}
			}
			if(closeenough)
			{
				var_5f1842bf[var_5f1842bf.size] = var_509f4558;
			}
		}
	}
	path = undefined;
	shortestpath = undefined;
	var_c4302000 = undefined;
	foreach(var_509f4558 in var_5f1842bf)
	{
		altar = var_509f4558[#"__unsafe__"][#"altar"];
		pathsegment = strategiccommandutility::function_e696ce55(params.bots[0], altar);
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(pathsegment.pathdistance > constants[#"distance"] * 2)
			{
				continue;
			}
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_c4302000 = var_509f4558;
				}
			}
		}
	}
	if(isdefined(var_c4302000))
	{
		planner::setblackboardattribute(planner, #"hash_6f9d6de0fc2bd62e", array(var_c4302000));
		params.altar = var_c4302000;
	}
	return params;
}

/*
	Name: function_e442b780
	Namespace: namespace_ed876ec
	Checksum: 0x8F25FEB3
	Offset: 0x1848
	Size: 0x18A
	Parameters: 2
	Flags: Linked, Private
*/
function private function_e442b780(planner, params)
{
	if(!isdefined(params.blocker) || !_paramshasbots(params))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			blocker = params.blocker[#"__unsafe__"][#"blocker"];
			var_9b096a0b = getclosestpointonnavmesh(params.blocker[#"origin"], 200, bot getpathfindingradius());
			bot bot::set_interact(blocker);
			bot setgoal(var_9b096a0b);
			bot.goalradius = 512;
		}
	}
	return 1;
}

/*
	Name: function_2af9b775
	Namespace: namespace_ed876ec
	Checksum: 0xEC0D5CAB
	Offset: 0x19E0
	Size: 0x75E
	Parameters: 2
	Flags: Linked, Private
*/
function private function_2af9b775(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	/#
		assert(isint(constants[#"affordability"]) || isfloat(constants[#"affordability"]), ("" + "") + "");
	#/
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_270c0711 = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	blockers = planner::getblackboardattribute(planner, #"zm_blockers");
	if(!isdefined(blockers))
	{
		blockers = [];
	}
	foreach(var_a1cd9f8e in blockers)
	{
		/#
			if(isdefined(var_a1cd9f8e) && getdvarint(#"hash_76cdb24d903cc201", 0))
			{
				recordline(getplayers()[0].origin, var_a1cd9f8e[#"origin"], (1, 0.5, 0), "");
				recordsphere(var_a1cd9f8e[#"origin"], 4, (1, 0.5, 0), "");
			}
		#/
		if(isdefined(var_a1cd9f8e) && var_a1cd9f8e[#"cost"] <= params.var_3ff64dd6 && (var_a1cd9f8e[#"cost"] / params.var_3ff64dd6) <= constants[#"affordability"])
		{
			closeenough = 1;
			foreach(botposition in params.botpositions)
			{
				if(distance2dsquared(var_a1cd9f8e[#"origin"], botposition) > distancesq)
				{
					closeenough = 0;
					break;
				}
			}
			if(closeenough)
			{
				/#
					if(isdefined(var_a1cd9f8e) && getdvarint(#"hash_76cdb24d903cc201", 0))
					{
						recordsphere(var_a1cd9f8e[#"origin"] + vectorscale((0, 0, 1), 10), 4, (0, 1, 0), "");
					}
				#/
				var_270c0711[var_270c0711.size] = var_a1cd9f8e;
			}
		}
	}
	path = undefined;
	shortestpath = undefined;
	var_2fcdec8b = undefined;
	foreach(var_a1cd9f8e in var_270c0711)
	{
		blocker = var_a1cd9f8e[#"__unsafe__"][#"blocker"];
		if(!isdefined(blocker) || blocker._door_open === 1 || blocker.has_been_opened === 1)
		{
			continue;
		}
		pathsegment = strategiccommandutility::calculatepathtotrigger(params.bots[0], blocker);
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(pathsegment.pathdistance > constants[#"distance"] * 2)
			{
				continue;
			}
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_2fcdec8b = var_a1cd9f8e;
				}
			}
		}
	}
	if(isdefined(var_2fcdec8b))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_blockers", array(var_2fcdec8b));
		/#
			if(isdefined(var_2fcdec8b) && getdvarint(#"hash_76cdb24d903cc201", 0))
			{
				recordsphere(var_2fcdec8b[#"origin"] + vectorscale((0, 0, 1), 30), 8, (1, 0.7529412, 0.7960784), "");
			}
		#/
		params.blocker = var_2fcdec8b;
	}
	return params;
}

/*
	Name: function_8015e63c
	Namespace: namespace_ed876ec
	Checksum: 0x3A74CD92
	Offset: 0x2148
	Size: 0xC0
	Parameters: 2
	Flags: Linked, Private
*/
function private function_8015e63c(planner, params)
{
	if(!isdefined(params.blocker) || !_paramshasbots(params))
	{
		return 2;
	}
	blocker = params.blocker[#"__unsafe__"][#"blocker"];
	if(!isdefined(blocker) || blocker._door_open === 1 || blocker.has_been_opened === 1)
	{
		return 2;
	}
	return 3;
}

/*
	Name: function_73f656f5
	Namespace: namespace_ed876ec
	Checksum: 0x2B14754C
	Offset: 0x2210
	Size: 0x18A
	Parameters: 2
	Flags: Linked, Private
*/
function private function_73f656f5(planner, params)
{
	if(!isdefined(params.chest) || !_paramshasbots(params))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			chest = params.chest[#"__unsafe__"][#"chest"];
			var_9b3def7 = getclosestpointonnavmesh(params.chest[#"origin"], 200, bot getpathfindingradius());
			bot bot::set_interact(chest);
			bot setgoal(var_9b3def7);
			bot.goalradius = 512;
		}
	}
	return 1;
}

/*
	Name: function_e057582f
	Namespace: namespace_ed876ec
	Checksum: 0x854070EF
	Offset: 0x23A8
	Size: 0x5AE
	Parameters: 2
	Flags: Linked, Private
*/
function private function_e057582f(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	/#
		assert(isint(constants[#"affordability"]) || isfloat(constants[#"affordability"]), ("" + "") + "");
	#/
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_6a7f5461 = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	chests = planner::getblackboardattribute(planner, #"zm_chests");
	if(!isdefined(chests))
	{
		chests = [];
	}
	foreach(var_a0633d6d in chests)
	{
		if(isdefined(var_a0633d6d) && var_a0633d6d[#"cost"] <= params.var_3ff64dd6 && (var_a0633d6d[#"cost"] / params.var_3ff64dd6) <= constants[#"affordability"])
		{
			closeenough = 1;
			foreach(botposition in params.botpositions)
			{
				if(distance2dsquared(var_a0633d6d[#"origin"], botposition) > distancesq)
				{
					closeenough = 0;
					break;
				}
			}
			if(closeenough)
			{
				var_6a7f5461[var_6a7f5461.size] = var_a0633d6d;
			}
		}
	}
	path = undefined;
	shortestpath = undefined;
	var_58fadc5d = undefined;
	foreach(var_a0633d6d in var_6a7f5461)
	{
		chest = var_a0633d6d[#"__unsafe__"][#"chest"];
		if(!isdefined(chest) || chest.hidden || (isdefined(chest._box_open) && chest._box_open))
		{
			continue;
		}
		pathsegment = strategiccommandutility::function_e696ce55(params.bots[0], chest.unitrigger_stub);
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(pathsegment.pathdistance > constants[#"distance"] * 2)
			{
				continue;
			}
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_58fadc5d = var_a0633d6d;
				}
			}
		}
	}
	if(isdefined(var_58fadc5d))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_chests", array(var_58fadc5d));
		params.chest = var_58fadc5d;
	}
	return params;
}

/*
	Name: function_ac1b59c
	Namespace: namespace_ed876ec
	Checksum: 0x105639CC
	Offset: 0x2960
	Size: 0x3C6
	Parameters: 2
	Flags: Linked
*/
function function_ac1b59c(planner, constants)
{
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_6a7f5461 = [];
	chests = planner::getblackboardattribute(planner, #"zm_chests");
	if(!isdefined(chests))
	{
		chests = [];
	}
	foreach(var_a0633d6d in chests)
	{
		if(isdefined(var_a0633d6d))
		{
			chest = var_a0633d6d[#"__unsafe__"][#"chest"];
			if(isdefined(chest.chest_user) && chest.chest_user === params.bots[0] && (isdefined(chest._box_open) && chest._box_open) && isdefined(chest.grab_weapon) && chest.grab_weapon.firetype !== "Single Shot")
			{
				var_6a7f5461[var_6a7f5461.size] = var_a0633d6d;
			}
		}
	}
	path = undefined;
	shortestpath = undefined;
	var_58fadc5d = undefined;
	foreach(var_a0633d6d in var_6a7f5461)
	{
		chest = var_a0633d6d[#"__unsafe__"][#"chest"];
		if(!isdefined(chest) || chest.hidden)
		{
			continue;
		}
		pathsegment = strategiccommandutility::function_e696ce55(params.bots[0], chest.unitrigger_stub);
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_58fadc5d = var_a0633d6d;
				}
			}
		}
	}
	if(isdefined(var_58fadc5d))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_chests", array(var_58fadc5d));
		params.chest = var_58fadc5d;
	}
	return params;
}

/*
	Name: function_29e16403
	Namespace: namespace_ed876ec
	Checksum: 0x85D30975
	Offset: 0x2D30
	Size: 0xA2
	Parameters: 2
	Flags: Linked, Private
*/
function private function_29e16403(planner, params)
{
	if(!isdefined(params.chest) || !_paramshasbots(params))
	{
		return 2;
	}
	chest = params.chest[#"__unsafe__"][#"chest"];
	if(!isdefined(chest) || chest.hidden)
	{
		return 2;
	}
	return 3;
}

/*
	Name: function_4f6a626d
	Namespace: namespace_ed876ec
	Checksum: 0xA6F1339E
	Offset: 0x2DE0
	Size: 0x54E
	Parameters: 2
	Flags: Linked, Private
*/
function private function_4f6a626d(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_a9cd6db9 = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	powerups = planner::getblackboardattribute(planner, #"zm_powerups");
	if(!isdefined(powerups))
	{
		powerups = [];
	}
	foreach(var_656e1ebc in powerups)
	{
		closeenough = 1;
		powerup = var_656e1ebc[#"__unsafe__"][#"powerup"];
		if(!isdefined(powerup))
		{
			continue;
		}
		foreach(botposition in params.botpositions)
		{
			if(distance2dsquared(powerup.origin, botposition) > distancesq)
			{
				closeenough = 0;
				break;
			}
		}
		if(closeenough)
		{
			var_a9cd6db9[var_a9cd6db9.size] = var_656e1ebc;
		}
	}
	path = undefined;
	shortestpath = undefined;
	var_7cc71b7c = undefined;
	var_ce95e926 = 64;
	foreach(var_656e1ebc in var_a9cd6db9)
	{
		powerup = var_656e1ebc[#"__unsafe__"][#"powerup"];
		poweruporigin = getclosestpointonnavmesh(powerup.origin, 200, params.bots[0] getpathfindingradius());
		if(!isdefined(poweruporigin))
		{
			continue;
		}
		pointstruct = spawnstruct();
		pointstruct.origin = poweruporigin;
		pathsegment = strategiccommandutility::calculatepathtopoints(params.bots[0], array(pointstruct));
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(pathsegment.pathdistance > constants[#"distance"] * 2)
			{
				continue;
			}
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_7cc71b7c = var_656e1ebc;
				}
			}
		}
	}
	if(isdefined(var_7cc71b7c))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_powerups", array(var_7cc71b7c));
		params.powerup = var_7cc71b7c;
	}
	return params;
}

/*
	Name: function_58d72c81
	Namespace: namespace_ed876ec
	Checksum: 0x742F77D3
	Offset: 0x3338
	Size: 0x192
	Parameters: 2
	Flags: Linked, Private
*/
function private function_58d72c81(planner, params)
{
	if(!isdefined(params.powerup) || !_paramshasbots(params))
	{
		return 2;
	}
	powerup = params.powerup[#"__unsafe__"][#"powerup"];
	if(!isdefined(powerup))
	{
		return 2;
	}
	var_ce95e926 = 64;
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			var_47d8cea1 = getclosestpointonnavmesh(powerup.origin, 200, bot getpathfindingradius());
			bot setgoal(var_47d8cea1, 1);
			bot.goalradius = var_ce95e926 * 0.8;
		}
	}
	return 1;
}

/*
	Name: function_6e8fe489
	Namespace: namespace_ed876ec
	Checksum: 0x644A17C6
	Offset: 0x34D8
	Size: 0xC6
	Parameters: 2
	Flags: Linked, Private
*/
function private function_6e8fe489(planner, params)
{
	if(!isdefined(params.powerup) || !_paramshasbots(params))
	{
		function_a023ae49(planner, params);
		return 2;
	}
	powerup = params.powerup[#"__unsafe__"][#"powerup"];
	if(!isdefined(powerup))
	{
		function_a023ae49(planner, params);
		return 2;
	}
	return 3;
}

/*
	Name: function_557051df
	Namespace: namespace_ed876ec
	Checksum: 0x715DFB9A
	Offset: 0x35A8
	Size: 0x35E
	Parameters: 2
	Flags: Linked, Private
*/
function private function_557051df(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_8498b0f1 = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	switches = planner::getblackboardattribute(planner, #"zm_switches");
	if(!isdefined(switches))
	{
		switches = [];
	}
	path = undefined;
	shortestpath = undefined;
	var_a0301374 = undefined;
	foreach(var_c42f08a2 in switches)
	{
		switchent = var_c42f08a2[#"__unsafe__"][#"switch"];
		if(!isdefined(switchent))
		{
			continue;
		}
		pathsegment = strategiccommandutility::calculatepathtotrigger(params.bots[0], switchent);
		if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
		{
			if(pathsegment.pathdistance > constants[#"distance"] * 2)
			{
				continue;
			}
			if(!isdefined(path) || pathsegment.pathdistance < shortestpath)
			{
				if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
				{
					path = pathsegment;
					shortestpath = pathsegment.pathdistance;
					var_a0301374 = var_c42f08a2;
				}
			}
		}
	}
	if(isdefined(var_a0301374))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_switches", array(var_a0301374));
		params.var_ed8f7cef = var_a0301374;
	}
	return params;
}

/*
	Name: function_967b74c1
	Namespace: namespace_ed876ec
	Checksum: 0x65A4AF78
	Offset: 0x3910
	Size: 0x18A
	Parameters: 2
	Flags: Linked, Private
*/
function private function_967b74c1(planner, params)
{
	if(!isdefined(params.var_ed8f7cef) || !_paramshasbots(params))
	{
		return 2;
	}
	switchent = params.var_ed8f7cef[#"__unsafe__"][#"switch"];
	if(!isdefined(switchent))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			var_bd055918 = getclosestpointonnavmesh(switchent.origin, 200, bot getpathfindingradius());
			bot bot::set_interact(switchent);
			bot setgoal(var_bd055918);
			bot.goalradius = 512;
		}
	}
	return 1;
}

/*
	Name: function_20f747ae
	Namespace: namespace_ed876ec
	Checksum: 0x6AC41274
	Offset: 0x3AA8
	Size: 0x90
	Parameters: 2
	Flags: Linked, Private
*/
function private function_20f747ae(planner, params)
{
	if(!isdefined(params.var_ed8f7cef) || !_paramshasbots(params))
	{
		return 2;
	}
	switchent = params.var_ed8f7cef[#"__unsafe__"][#"switch"];
	if(!isdefined(switchent))
	{
		return 2;
	}
	return 3;
}

/*
	Name: function_6fe73720
	Namespace: namespace_ed876ec
	Checksum: 0x88EF7EF1
	Offset: 0x3B40
	Size: 0x18A
	Parameters: 2
	Flags: Linked, Private
*/
function private function_6fe73720(planner, params)
{
	if(!isdefined(params.wallbuy) || !_paramshasbots(params))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			wallbuy = params.wallbuy[#"__unsafe__"][#"wallbuy"];
			var_141550e2 = getclosestpointonnavmesh(params.wallbuy[#"origin"], 200, bot getpathfindingradius());
			bot bot::set_interact(wallbuy);
			bot setgoal(var_141550e2);
			bot.goalradius = 512;
		}
	}
	return 1;
}

/*
	Name: function_393b9c76
	Namespace: namespace_ed876ec
	Checksum: 0x8800586
	Offset: 0x3CD8
	Size: 0x88E
	Parameters: 2
	Flags: Linked, Private
*/
function private function_393b9c76(planner, constants)
{
	/#
		assert(isint(constants[#"distance"]) || isfloat(constants[#"distance"]), ("" + "") + "");
	#/
	/#
		assert(isint(constants[#"affordability"]) || isfloat(constants[#"affordability"]), ("" + "") + "");
	#/
	/#
		assert(isint(constants[#"hash_357612272d0dca05"]) || isfloat(constants[#"hash_357612272d0dca05"]), ("" + "") + "");
	#/
	var_66c1c955 = isdefined(constants[#"highcost"]) && constants[#"highcost"];
	var_45bdcccb = isdefined(constants[#"highrank"]) && constants[#"highrank"];
	if(var_45bdcccb)
	{
		var_66c1c955 = 0;
	}
	params = function_98118579(planner);
	if(params.bots.size <= 0)
	{
		return params;
	}
	var_8c60fdb3 = [];
	distancesq = constants[#"distance"] * constants[#"distance"];
	wallbuys = planner::getblackboardattribute(planner, #"zm_wallbuys");
	if(!isdefined(wallbuys))
	{
		wallbuys = [];
	}
	foreach(var_df2f03d1 in wallbuys)
	{
		if(isdefined(var_df2f03d1) && var_df2f03d1[#"cost"] <= params.var_3ff64dd6 && (var_df2f03d1[#"cost"] / params.var_3ff64dd6) <= constants[#"affordability"])
		{
			closeenough = 1;
			foreach(botposition in params.botpositions)
			{
				if(distance2dsquared(var_df2f03d1[#"origin"], botposition) > distancesq)
				{
					closeenough = 0;
					break;
				}
			}
			if(closeenough)
			{
				var_8c60fdb3[var_8c60fdb3.size] = var_df2f03d1;
			}
		}
	}
	path = undefined;
	cost = 0;
	rank = 2147483647;
	shortestpath = undefined;
	var_c5e003e1 = undefined;
	currentweaponrank = function_1b0a9309(params.bots[0]);
	foreach(var_df2f03d1 in var_8c60fdb3)
	{
		weapon = var_df2f03d1[#"weapon"];
		if(params.bots[0] getammocount(weapon) >= (weapon.startammo * 0.5))
		{
			continue;
		}
		wallbuy = var_df2f03d1[#"__unsafe__"][#"wallbuy"];
		weaponrank = function_8cfcffa3(params.bots[0], wallbuy.weapon);
		if(weaponrank - currentweaponrank < constants[#"hash_357612272d0dca05"])
		{
			continue;
		}
		var_e61f062b = params.bots[0] getpathfindingradius();
		var_141550e2 = getclosestpointonnavmesh(var_df2f03d1[#"origin"], 200, var_e61f062b);
		if(isdefined(var_141550e2) && isdefined(params.botpositions[0]))
		{
			pathsegment = generatenavmeshpath(params.botpositions[0], var_141550e2, params.bots[0]);
			if(isdefined(pathsegment) && isdefined(pathsegment.status) && pathsegment.status == #"succeeded")
			{
				if(pathsegment.pathdistance > constants[#"distance"] * 2)
				{
					continue;
				}
				var_5b74c1ee = !isdefined(path) || pathsegment.pathdistance < shortestpath;
				var_b60f07ee = var_df2f03d1[#"cost"] > cost;
				var_ebf859b2 = weaponrank > rank;
				if(!isdefined(path) || (var_66c1c955 && var_b60f07ee) || (var_45bdcccb && var_ebf859b2))
				{
					if(function_37d90686(params.bots[0], pathsegment) <= 4.5)
					{
						rank = weaponrank;
						cost = var_df2f03d1[#"cost"];
						path = pathsegment;
						shortestpath = pathsegment.pathdistance;
						var_c5e003e1 = var_df2f03d1;
					}
				}
			}
		}
	}
	if(isdefined(var_c5e003e1))
	{
		planner::setblackboardattribute(planner, #"zm_pathable_wallbuys", array(var_c5e003e1));
		params.wallbuy = var_c5e003e1;
	}
	return params;
}

/*
	Name: function_ec7dcff9
	Namespace: namespace_ed876ec
	Checksum: 0xE9B406FF
	Offset: 0x4570
	Size: 0x4C
	Parameters: 2
	Flags: Linked, Private
*/
function private function_ec7dcff9(planner, params)
{
	if(!isdefined(params.wallbuy) || !_paramshasbots(params))
	{
		return 2;
	}
	return 3;
}

/*
	Name: function_e5a77501
	Namespace: namespace_ed876ec
	Checksum: 0xB83079B0
	Offset: 0x45C8
	Size: 0xFA
	Parameters: 2
	Flags: Linked, Private
*/
function private function_e5a77501(planner, constants)
{
	foreach(botinfo in planner::getblackboardattribute(planner, "doppelbots"))
	{
		bot = botinfo[#"__unsafe__"][#"bot"];
		if(!strategiccommandutility::isvalidbot(bot))
		{
			continue;
		}
		if(bot getcurrentweapon().isgadget)
		{
			return true;
		}
	}
	return false;
}

/*
	Name: function_8e40731d
	Namespace: namespace_ed876ec
	Checksum: 0xC32CC2AD
	Offset: 0x46D0
	Size: 0xCA
	Parameters: 2
	Flags: Linked, Private
*/
function private function_8e40731d(planner, params)
{
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			bot bot::clear_interact();
			bot.goalradius = 512;
			bot.goalheight = 100;
		}
	}
	return true;
}

/*
	Name: function_8030d0d2
	Namespace: namespace_ed876ec
	Checksum: 0xE6188CE
	Offset: 0x47A8
	Size: 0xD4
	Parameters: 2
	Flags: Linked, Private
*/
function private function_8030d0d2(planner, params)
{
	if(!_paramshasbots(params))
	{
		return 2;
	}
	foreach(bot in params.bots)
	{
		if(strategiccommandutility::isvalidbot(bot))
		{
			bot setgoal(bot.origin);
		}
	}
	return 3;
}

/*
	Name: debug_setup
	Namespace: namespace_ed876ec
	Checksum: 0xDA054DAA
	Offset: 0x4888
	Size: 0x11E
	Parameters: 0
	Flags: None
*/
function debug_setup()
{
	/#
		adddebugcommand("");
		adddebugcommand("");
		adddebugcommand("");
		adddebugcommand("");
		adddebugcommand("");
		adddebugcommand("");
		while(true)
		{
			if(getdvarint(#"hash_43057e52c6abc0a", 0))
			{
				function_8f74831a();
			}
			if(getdvarint(#"hash_2b3c1b6ddd04dcf0", 0))
			{
				function_bd34d468();
			}
			waitframe(1);
		}
	#/
}

/*
	Name: function_8f74831a
	Namespace: namespace_ed876ec
	Checksum: 0x6611F0F4
	Offset: 0x49B0
	Size: 0x54
	Parameters: 0
	Flags: None
*/
function function_8f74831a()
{
	/#
		if(!isdefined(level.var_257aa6d4))
		{
			level.var_257aa6d4 = function_9259be56();
		}
		function_fafff2f(level.var_257aa6d4);
	#/
}

/*
	Name: function_bd34d468
	Namespace: namespace_ed876ec
	Checksum: 0x9EBCC75C
	Offset: 0x4A10
	Size: 0x54
	Parameters: 0
	Flags: None
*/
function function_bd34d468()
{
	/#
		if(!isdefined(level.var_b1090a59))
		{
			level.var_b1090a59 = function_6e494c0e();
		}
		function_fafff2f(level.var_b1090a59);
	#/
}

/*
	Name: function_9259be56
	Namespace: namespace_ed876ec
	Checksum: 0x12C2454B
	Offset: 0x4A70
	Size: 0x18C
	Parameters: 0
	Flags: None
*/
function function_9259be56()
{
	/#
		obbs = [];
		var_521da80d = array("", "", "");
		foreach(var_b849a5e7 in var_521da80d)
		{
			doorblockers = getentarray(var_b849a5e7, "");
			foreach(doorblocker in doorblockers)
			{
				obb = function_fc9f37f4(doorblocker);
				obb.points = tacticalquery(#"stratcom_tacquery_trigger", obb);
				obbs[obbs.size] = obb;
			}
		}
		return obbs;
	#/
}

/*
	Name: function_6e494c0e
	Namespace: namespace_ed876ec
	Checksum: 0x4AA48D7F
	Offset: 0x4C08
	Size: 0x130
	Parameters: 0
	Flags: None
*/
function function_6e494c0e()
{
	/#
		obbs = [];
		foreach(wallbuy in level._spawned_wallbuys)
		{
			obb = function_3ad5b4e7(wallbuy.trigger_stub);
			origin = getclosestpointonnavmesh(wallbuy.trigger_stub.origin, 200, 15.1875);
			obb.points = [];
			if(isdefined(origin))
			{
				obb.points[obb.points.size] = {#origin:origin};
			}
			obbs[obbs.size] = obb;
		}
		return obbs;
	#/
}

/*
	Name: function_fc9f37f4
	Namespace: namespace_ed876ec
	Checksum: 0xDE52A0E5
	Offset: 0x4D48
	Size: 0xA2
	Parameters: 1
	Flags: None
*/
function function_fc9f37f4(trigger)
{
	/#
		heightoffset = (0, 0, (72 * -1) / 2);
		var_e790dc87 = (15.1875, 15.1875, 72 / 2);
		return ai::function_470c0597(trigger.origin + heightoffset, trigger.maxs + var_e790dc87, trigger.angles);
	#/
}

/*
	Name: function_3ad5b4e7
	Namespace: namespace_ed876ec
	Checksum: 0x392EAA59
	Offset: 0x4DF8
	Size: 0x7A
	Parameters: 1
	Flags: None
*/
function function_3ad5b4e7(triggerstub)
{
	/#
		maxs = (triggerstub.script_width / 2, triggerstub.script_length / 2, triggerstub.script_height / 2);
		return ai::function_470c0597(triggerstub.origin, maxs, triggerstub.angles);
	#/
}

/*
	Name: function_fafff2f
	Namespace: namespace_ed876ec
	Checksum: 0xCA2DEC0A
	Offset: 0x4E80
	Size: 0x180
	Parameters: 1
	Flags: None
*/
function function_fafff2f(obbs)
{
	/#
		foreach(obb in obbs)
		{
			box(obb.center, obb.halfsize * -1, obb.halfsize, obb.angles[1], (0, 1, 0));
			if(obb.points.size > 0)
			{
				foreach(point in obb.points)
				{
					sphere(point.origin, 10, (0, 1, 0));
				}
				continue;
			}
			sphere(obb.center, 20, (1, 0, 0));
		}
	#/
}

