// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_76908a4b;

/*
	Name: function_89f2df9
	Namespace: namespace_76908a4b
	Checksum: 0x39F85A6B
	Offset: 0x88
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_89f2df9()
{
	system::register(#"hash_58e2298d0db8b6aa", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_76908a4b
	Checksum: 0x8DF7C59B
	Offset: 0xD0
	Size: 0x5C
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(!zm_trial::function_b47f6aba())
	{
		return;
	}
	zm_trial::register_challenge(#"hash_58e2298d0db8b6aa", &on_begin, &on_end);
}

/*
	Name: on_begin
	Namespace: namespace_76908a4b
	Checksum: 0x80F724D1
	Offset: 0x138
	Size: 0x4
	Parameters: 0
	Flags: Private
*/
function private on_begin()
{
}

/*
	Name: on_end
	Namespace: namespace_76908a4b
	Checksum: 0xEF9EF00F
	Offset: 0x148
	Size: 0x98
	Parameters: 1
	Flags: Private
*/
function private on_end(round_reset)
{
	if(round_reset)
	{
		foreach(e_player in level.players)
		{
			e_player gadgetpowerset(level.var_a53a05b5, 100);
		}
	}
}

