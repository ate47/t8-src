// Decompiled by Serious. Credits to Scoba for his original tool, Cerberus, which I heavily upgraded to support remaining features, other games, and other platforms.
#using scripts\wz_common\wz_common_fixup.gsc;
#using scripts\mp_common\item_world_fixup.gsc;

#namespace namespace_8adbca95;

/*
	Name: __init__
	Namespace: namespace_8adbca95
	Checksum: 0x23356EE6
	Offset: 0x78
	Size: 0x14
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__()
{
	function_c77b33db();
}

/*
	Name: function_c77b33db
	Namespace: namespace_8adbca95
	Checksum: 0xCA017C93
	Offset: 0x98
	Size: 0xCAC
	Parameters: 0
	Flags: Linked
*/
function function_c77b33db()
{
	var_a12b4736 = &item_world_fixup::function_96ff7b88;
	var_d2223309 = &item_world_fixup::function_261ab7f5;
	var_b5014996 = &item_world_fixup::function_19089c75;
	var_87d0eef8 = &item_world_fixup::remove_item;
	var_74257310 = &item_world_fixup::function_6da5e673;
	var_f8a4c541 = &item_world_fixup::function_6991057;
	if(isdefined(getgametypesetting(#"hash_3109a8794543000f")) && getgametypesetting(#"hash_3109a8794543000f"))
	{
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_3b5119f663e783b1", #"hash_182fdef2ad243e20");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_1f72dec518451f8c", #"hash_46dd75a1a3f70780");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_7ebaa4e1e2f5d8a2", #"hash_182fdef2ad243e20");
		wz_common_fixup::item_replacer(var_d2223309, var_74257310, #"hash_3bf6ed4e3a22e9f3", #"hash_212b01feaa916a00");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_27e22f275feb07fe", #"hash_8dc997954bb3904");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_5169964579e807e3", #"hash_8dc997954bb3904");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_3c8a483e6ebb08cb", #"hash_8dc997954bb3904");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_4d9217b81488ca02", #"hash_8dc997954bb3904");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_25fc1eba4e8349b", #"hash_48af83ea40a85fcf");
		wz_common_fixup::item_replacer(var_74257310, undefined, #"warmachine_wz_item", #"launcher_standard_t8_item");
		wz_common_fixup::item_replacer(var_74257310, undefined, #"flamethrower_wz_item", #"launcher_standard_t8_item");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_774a49591e12d6d", #"hash_7e0a254a9044612");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_53568e2a0a929c12", #"hash_12addb5ce13ebab3");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_4be238cfa4c911b7", #"hash_52adb1cb99cd787c");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_58959191442a7ad4", #"hash_38bc808d9eaf09b5");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_3ea2902b7908e871", #"hash_4b91dc8ee99707ae");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_166d47d063a39440", #"hash_79b0e35438d0d5d6");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_7f70b6e5eca04933", #"hash_48af83ea40a85fcf");
		wz_common_fixup::item_replacer(var_f8a4c541, undefined, #"hash_72237d19c92c6b21", #"hash_5aacba97f952d8ca");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_6fc60554f331d773", #"hash_67589d5824bccf1d");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_7491ec9e64118e2c", #"hash_4e5c5d7f04b1f41a");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_2d961760cac60b12", #"hash_67f269afa081e0e4");
		wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_11f313217dbe7186", #"hash_7f435b2a338da900");
		if(isdefined(getgametypesetting(#"wzenablewallbuyasylum")) && getgametypesetting(#"wzenablewallbuyasylum") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_27a77e458cb2223e", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuydiner")) && getgametypesetting(#"wzenablewallbuydiner") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_7fe452ac99dcb25f", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuycemetary")) && getgametypesetting(#"wzenablewallbuycemetary") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_2572e1a193175b4d", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuyfarm")) && getgametypesetting(#"wzenablewallbuyfarm") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_2bb44d78cfdc661", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuynuketown")) && getgametypesetting(#"wzenablewallbuynuketown") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_7f50125ebbc15534", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuyboxinggym")) && getgametypesetting(#"wzenablewallbuyboxinggym") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_5d334f942754156e", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuyghosttown")) && getgametypesetting(#"wzenablewallbuyghosttown") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_10db7f8ca1621554", #"hash_58c7b2a5803b7566");
		}
		if(isdefined(getgametypesetting(#"wzenablewallbuylighthouse")) && getgametypesetting(#"wzenablewallbuylighthouse") || (isdefined(getgametypesetting(#"hash_232750b87390cbff")) && getgametypesetting(#"hash_232750b87390cbff")))
		{
			wz_common_fixup::item_replacer(var_b5014996, var_f8a4c541, #"hash_27d464e9703672a1", #"hash_58c7b2a5803b7566");
		}
	}
}

