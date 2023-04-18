// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\zm_common\zm_trial.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_497ab7da;

/*
	Name: __init__system__
	Namespace: namespace_497ab7da
	Checksum: 0xBD0449B4
	Offset: 0x78
	Size: 0x3C
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__system__()
{
	system::register(#"hash_42f44652a16988d8", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_497ab7da
	Checksum: 0xACE5A132
	Offset: 0xC0
	Size: 0x33C
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(!zm_trial::function_b47f6aba())
	{
		return;
	}
	zm_trial::register_challenge(#"disable_buys", &on_begin, &on_end);
	forcestreamxmodel(#"p8_zm_wall_buy_ar_accurate");
	forcestreamxmodel(#"p8_zm_wall_buy_ar_fastfire");
	forcestreamxmodel(#"p8_zm_wall_buy_ar_modular");
	forcestreamxmodel(#"p8_zm_wall_buy_ar_stealth");
	forcestreamxmodel(#"hash_6af4a0ff3d4ea44c");
	forcestreamxmodel(#"p8_zm_wall_buy_lmg_titan");
	forcestreamxmodel(#"p8_zm_wall_buy_pistol_burst");
	forcestreamxmodel(#"p8_zm_wall_buy_pistol_standard");
	forcestreamxmodel(#"p8_zm_wall_buy_shotgun_pump");
	forcestreamxmodel(#"p8_zm_wall_buy_shotgun_trenchgun");
	forcestreamxmodel(#"p8_zm_wall_buy_smg_accurate");
	forcestreamxmodel(#"hash_5434d478b48918e");
	forcestreamxmodel(#"p8_zm_wall_buy_smg_drum_pistol");
	forcestreamxmodel(#"p8_zm_wall_buy_smg_fastfire");
	forcestreamxmodel(#"p8_zm_wall_buy_smg_handling");
	forcestreamxmodel(#"hash_1e826c91e070af89");
	forcestreamxmodel(#"p8_zm_wall_buy_tr_leveraction");
	forcestreamxmodel(#"p8_zm_wall_buy_tr_longburst");
	forcestreamxmodel(#"p8_zm_wall_buy_tr_powersemi");
	forcestreamxmodel(#"p8_zm_wall_buy_symbol_01");
	forcestreamxmodel(#"p8_zm_wall_buy_symbol_01_middle");
	forcestreamxmodel(#"p8_zm_wall_buy_symbol_01_reverse");
	forcestreamxmodel(#"hash_38b107b1b645837d");
}

/*
	Name: on_begin
	Namespace: namespace_497ab7da
	Checksum: 0xCB56358F
	Offset: 0x408
	Size: 0x14
	Parameters: 2
	Flags: Private
*/
function private on_begin(local_client_num, params)
{
}

/*
	Name: on_end
	Namespace: namespace_497ab7da
	Checksum: 0x613FD966
	Offset: 0x428
	Size: 0xC
	Parameters: 1
	Flags: Private
*/
function private on_end(local_client_num)
{
}

