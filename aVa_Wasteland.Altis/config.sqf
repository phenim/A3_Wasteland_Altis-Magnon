pistolArray =
[
	//Handgun
    ["P07 9 mm","hgun_P07_F",40,20],
	["Rook-40 9 mm","hgun_Rook40_F",40,20],
	["ACP-C2 9 mm","hgun_ACPC2_F",40,20]
]; 

rifleArray =
[
    //Underwater Gun
	["SDAR 5.56 mm","arifle_SDAR_F",50,25],
	//Assault Rifle
	["MX 6.5 mm","arifle_MX_F",150,75],
	["MX 3GL 6.5 mm","arifle_MX_GL_F",250,125],
	["MXC 6.5 mm","arifle_MXC_F",150,75],
	["MXM 6.5 mm","arifle_MXM_F",700,350],

	/*//Light Machine Gun
	["MX SW 6.5 mm","arifle_MX_SW_F",200,100],
	["Mk200 6.5 mm","LMG_Mk200_F",300,150],
	["Zafir 7.62 mm","LMG_Zafir_F",400,200],*/
	//Assault Rifle
	["Mk20C 5.56 mm","arifle_Mk20C_F",150,75],
	["Mk20 5.56 mm","arifle_Mk20_F",150,75],	
	["Mk20 EGLM 5.56 mm","arifle_Mk20_GL_F",150,75],

	["TRG-20 5.56 mm","arifle_TRG20_F",150,75],	
	["TRG-21 5.56 mm","arifle_TRG21_F",150,75],
	["TRG-21 EGLM 5.56 mm","arifle_TRG21_GL_F",250,125],

	["Katiba 6.5 mm","arifle_Katiba_F",150,75],
	["Katiba Carabine 6.5 mm","arifle_Katiba_C_F",150,75],
	["Katiba GL 6.5 mm","arifle_Katiba_GL_F",250,125]
	//Sniper
	/*["Mk18 ABR 7.62 mm","srifle_EBR_F",2500,1000],
	["M320 LRR .408","srifle_LRR_F",2500,1000],
	["GM6 Lynx 12.7 mm","srifle_GM6_F",2500,1000]*/
]; 

smgArray =
[
	["Vermin SBR 9mm", "SMG_01_F", 90, 30],
	["Scorpion EVO-4 9mm", "SMG_02_F", 90, 30],
	["PDW 2000 9mm", "hgun_PDW2000_F", 90, 30]
];

shotgunArray =
[
]; 

lmgArray =
[
	["MX SW 6.5 mm","arifle_MX_SW_F",200,100],
	["Mk200 6.5 mm","LMG_Mk200_F",300,150],
	["Zafir 7.62 mm","LMG_Zafir_F",400,200]
]; 

srifleArray =
[
	["Mk18 ABR 7.62 mm","srifle_EBR_F",2500,1000],
	["M320 LRR .408","srifle_LRR_F",2500,1000],
	["GM6 Lynx 12.7 mm","srifle_GM6_F",2500,1000]
]; 

launcherArray =
[
    //Rocket
	["PCML","launch_NLAW_F",1000,500],
	["RPG-42 Alamut","launch_RPG32_F",1000,500],
	["Titan MPRL","launch_Titan_F",1000,500],
	["Titan MPRL Compact","launch_Titan_short_F",1000,500]
]; 

throwputArray =
[
	["RGO Frag Grenade","HandGrenade",50,0],
	["Stone","HandGrenade_Stone",30,0],
	["Mini Grenade","MiniGrenade",25,0],
	["Smoke Grenade (White)", "SmokeShell", 50,0],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 50,0],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50,0],
	["Smoke Grenade (Red)", "SmokeShellRed", 50,0],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50,0],
	["Smoke Grenade (Orange)", "SmokeShellPurple", 50,0],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50,0],
	["Chemlight (Green)", "Chemlight_green", 10,0],
	["Chemlight (Red)", "Chemlight_red", 10,0],
	["Chemlight (Yellow)", "Chemlight_yellow", 10,0],
	["Chemlight (Blue)", "Chemlight_blue", 10,0],
	["Explosive Charge","DemoCharge_Remote_Mag",500,0],
	["Explosive Satchel","SatchelCharge_Remote_Mag",600,0],
	["AT Mine","ATMine_Range_Mag",500,0],
	["M6 SLAM Mine","SLAMDirectionalMine_Wire_Mag",500,0],
	["Claymore Charge","ClaymoreDirectionalMine_Remote_Mag",300,0],
	["APERS Mine","APERSMine_Range_Mag",500,0],
	["APERS Bounding Mine","APERSBoundingMine_Range_Mag",500,0],
	["APERS Tripwire Mine","APERSTripMine_Wire_Mag",500,0]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray =
[
	["9mm 16Rnd Mag","16Rnd_9x21_Mag",15],
	["9mm 30Rnd Mag","30Rnd_9x21_Mag",30],
	[".45 ACP 9Rnd Mag","9Rnd_45ACP_Mag",20],
	[".45 ACP 30Rnd Vermin Mag","30Rnd_45ACP_MAG_SMG_01",40],
	[".45 30Rnd VerminTracers (Green) Mag","30Rnd_45ACP_Mag_SMG_01_tracer_green",30],
	["5.56mm 20Rnd Dual Purpose Mag","20Rnd_556x45_UW_mag",15],
	["5.56mm 30Rnd STANAG Mag","30Rnd_556x45_Stanag",30],
	["5.56mm 30Rnd Tracer (Red) Mag","30Rnd_556x45_Stanag_Tracer_Red",20],
	["5.56mm 30Rnd Tracer (Yellow) Mag","30Rnd_556x45_Stanag_Tracer_Yellow",20],
	["5.56mm 30Rnd Tracer (Green) Mag","30Rnd_556x45_Stanag_Tracer_Green",20],
	["6.5mm 30Rnd STANAG Mag","30Rnd_65x39_caseless_mag",40],
	["6.5mm 30Rnd Tracer (Red) Mag","30Rnd_65x39_caseless_mag_Tracer",30],
	["6.5mm 30Rnd Caseless Mag","30Rnd_65x39_caseless_green",35],
	["6.5mm 30Rnd Tracer (Green) Mag","30Rnd_65x39_caseless_green_mag_Tracer",25],
	["6.5mm 100Rnd Belt Case","100Rnd_65x39_caseless_mag",60],
	["6.5mm 100Rnd Tracer (Red) Belt Case","100Rnd_65x39_caseless_mag_Tracer",50],
	["6.5mm 200Rnd Belt Case","200Rnd_65x39_cased_Box",100],
	["6.5mm 200Rnd Tracer (Green) Belt Case","200Rnd_65x39_cased_Box_Tracer",80],
	["7.62mm 20Rnd Mag","20Rnd_762x51_Mag",250],
	["7.62mm 150Rnd Box","150Rnd_762x51_Box",110],
	["7.62mm 150Rnd Tracer (Green) Box","150Rnd_762x51_Box_Tracer",80],
	[".408 7Rnd Cheetah Mag","7Rnd_408_Mag",300],
	["12.7mm 5Rnd Mag","5Rnd_127x108_Mag",300],
	["40mm HE Grenade Round","1Rnd_HE_Grenade_shell",50],
	["Flare Round (White)","UGL_FlareWhite_F",50],
	["Flare Round (Green)","UGL_FlareGreen_F",50],
	["Flare Round (Red)","UGL_FlareRed_F",50],
	["Flare Round (Yellow)","UGL_FlareYellow_F",50],
	["Flare Round (IR)","UGL_FlareCIR_F",50],
	["Smoke Round (White)","1Rnd_Smoke_Grenade_shell",25],
	["Smoke Round (Red)","1Rnd_SmokeRed_Grenade_shell",25],
	["Smoke Round (Green)","1Rnd_SmokeGreen_Grenade_shell",25],
	["Smoke Round (Yellow)","1Rnd_SmokeYellow_Grenade_shell",25],
	["Smoke Round (Purple)","1Rnd_SmokePurple_Grenade_shell",25],
	["Smoke Round (Blue)","1Rnd_SmokeBlue_Grenade_shell",25],
	["Smoke Round (Orange)","1Rnd_SmokeOrange_Grenade_shell",25],
	["40mm 3Rnd HE Grenade","3Rnd_HE_Grenade_shell",150],
	["3Rnd 3GL Flares (White)","3Rnd_UGL_FlareWhite_F",150],
	["3Rnd 3GL Flares (Green)","3Rnd_UGL_FlareGreen_F",150],
	["3Rnd 3GL Flares (Red)","3Rnd_UGL_FlareRed_F",150],
	["3Rnd 3GL Flares (Yellow)","3Rnd_UGL_FlareYellow_F",150],
	["3Rnd 3GL Flares (IR)","3Rnd_UGL_FlareCIR_F",150],
	["3Rnd 3GL Smoke Rounds (White)","3Rnd_Smoke_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Red)","3Rnd_SmokeRed_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Green)","3Rnd_SmokeGreen_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Yellow)","3Rnd_SmokeYellow_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Purple)","3Rnd_SmokePurple_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Blue)","3Rnd_SmokeBlue_Grenade_shell",75],
	["3Rnd 3GL Smoke Rounds (Orange)","3Rnd_SmokeOrange_Grenade_shell",75],
	["PCML Missile","NLAW_F",500],
	["RPG-42 Missile","RPG32_F",500],
	["RPG-42 HE Missile","RPG32_HE_F",500],
	["Titan AA Missile","Titan_AA",800],
	["Titan AT Missile","Titan_AT",550],
	["Titan AP Missile","Titan_AP",550]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray =
[
	["Suppressor 9mm","muzzle_snds_L", 250,"item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 250, "item"],
	["Suppressor 6.5mm","muzzle_snds_H", 250,"item"],
	["Suppressor .45 ACP","muzzle_snds_acp", 250,"item"],
	["LMG Suppressor 6.5mm","muzzle_snds_H_MG", 250,"item"],
	["Suppressor 7.62mm","muzzle_snds_B", 250,"item"],
	["Flash Light","acc_flashlight", 100,"item"],
	["IR Light","acc_pointer_IR", 100,"item"],
	["NVS","optic_NVS", 200,"item"],
	["Nightstalker","optic_nightstalker", 500,"item"],
	["Holosight","optic_Holosight", 100,"item"],
	["Holosight(SMG)","optic_Holosight_smg", 80,"item"],
	["ACO Sight","optic_Aco", 100,"item"],
	["ACO Sight Green","optic_Aco_grn", 100,"item"],
	["ACO Sight(SMG)","optic_aco_smg", 70,"item"],
	["RCO Sight","optic_Hamr", 500,"item"],
	["ARCO Sight","optic_Arco", 500,"item"],
	["MRCO Sight","optic_MRCO", 500,"item"],
	["SOS Sight","optic_SOS", 1000,"item"],
	["TWS","optic_tws", 1000,"item"],
	["TWS MG","optic_tws_mg", 1000,"item"]
]; 

backpackArray =
[
	["Small Grn","B_AssaultPack_Base",350,"backpack"],
	["Small Blk","B_AssaultPack_blk",350,"backpack"],
	["Small Brn","B_AssaultPack_cbr",350,"backpack"],
	["Small Digi","B_AssaultPack_dgtl",350,"backpack"],
	["Small Grn","B_AssaultPack_khk",350,"backpack"],
	//["TestB_AssaultPack_khk_holder","B_AssaultPack_khk_holder",0,"backpack"],
	["Small Camo","B_AssaultPack_mcamo",350,"backpack"],
	//["Small Green","B_AssaultPack_ocamo",0,"backpack"],
	["Small Dark Brn","B_AssaultPack_rgr",350,"backpack"],
	["Small White","B_AssaultPack_sgg",350,"backpack"],
	
	["Small Diver Blk","B_AssaultPack_blk_DiverExp",2400,"backpack"],

	["Small Medic Drk Brn","B_AssaultPack_rgr_Medic",750,"backpack"],
	["Small Repair Drk Brn","B_AssaultPack_rgr_Repair",1200,"backpack"],
	["Medium Brn","B_FieldPack_Base",700,"backpack"],
	["Medium Blk","B_FieldPack_blk",700,"backpack"],
	["Medium Camo","B_FieldPack_ocamo",700,"backpack"],
	["Medium Camo Blu","B_FieldPack_oucamo",700,"backpack"],
	["Medium Diver Blk","B_FieldPack_blk_DiverExp",4300,"backpack"],
	//["Medium Diver TL Blk","B_FieldPack_blk_DiverTL",1200,"backpack"],
	//["TestB_FieldPack_cbr","B_FieldPack_cbr",0,"backpack"],
	//["TestB_FieldPack_cbr_AT","B_FieldPack_cbr_AT",0,"backpack"],
	["Medium Medic Camo","B_FieldPack_ocamo_Medic",1300,"backpack"],
	["Medium Repair Brn","B_FieldPack_cbr_Repair",2000,"backpack"],
	["Large Brn","B_Bergen_Base",2000,"backpack"],
	["Large Brn 2","B_Kitbag_Base",2000,"backpack"],
	["Large Lght Brn","B_Kitbag_cbr",2000,"backpack"],
	["Large Drk Camo","B_Kitbag_mcamo",2000,"backpack"],
	["Large Green","B_Kitbag_sgg",2000,"backpack"],
	//["TestB_Bergen_sgg","B_Bergen_sgg",0,"backpack"],
	["Large Explosives","B_Bergen_sgg_Exp",5500,"backpack"],
	["Ex Large Brn","B_Carryall_Base",4000,"backpack"],
	["Ex Large Camo","B_Carryall_ocamo",4000,"backpack"],
	["Ex Large Camo Blu","B_Carryall_oucamo",4000,"backpack"],
	["Steerable parachute","B_Parachute",1000,"backpack"]
	//["TestB_Carryall_oucamo_Exp","B_Carryall_oucamo_Exp",0,"backpack"],
	//["TestBag_Base","Bag_Base",0,"backpack"]
];

//Gun Store Apparel List
//Text name, classname, buy cost, item class
apparelArray =
[	
];

headArray=
[
	//["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	//["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	//["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	//["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	//["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	//["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	//["Bandanna (Surfer)", "H_Bandanna_surfer", 15, "hat"],
	//["Bandanna Mask (Black)", "H_BandMask_blk", 15, "hat"],
	//["Bandanna Mask (Demon)", "H_BandMask_demon", 15, "hat"],
	//["Bandanna Mask (Khaki)", "H_BandMask_khk", 15, "hat"],
	//["Bandanna Mask (Reaper)", "H_BandMask_reaper", 15, "hat"],
	["Beanie", "H_Watchcap_blk", 10, "hat"],
	//["Beanie (Camo)", "H_Watchcap_camo", 10, "hat"],
	//["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	//["Beanie (Sage)", "H_Watchcap_sgg", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 25, "hat"],
	//["Beret (Green)", "H_Beret_grn", 25, "hat"],
	//["Beret (Police)", "H_Beret_blk_POLICE", 25, "hat"],
	//["Beret (Red)", "H_Beret_red", 25, "hat"],
	//["Beret (SAS)", "H_Beret_brn_SF", 25, "hat"],
	//["Beret (SF)", "H_Beret_grn_SF", 25, "hat"],
	//["Beret (RED)", "H_Beret_ocamo", 25, "hat"],
	//["Black Turban", "H_TurbanO_blk", 30, "hat"],
	//["Booniehat (Dirty)","H_Booniehat_dirty", 25,"hat"],
	["Booniehat (Green)","H_Booniehat_grn", 25,"hat"],
	["Booniehat (Hex)","H_Booniehat_khk", 25,"hat"],
	["Booniehat (Khaki)","H_Booniehat_indp", 25,"hat"],
	//["Booniehat (MTP)","H_Booniehat_mcamo", 25,"hat"],
	["Booniehat (Tan)","H_Booniehat_tan", 25,"hat"],
	//["Booniehat (GREEN)","H_Booniehat_dgtl", 25,"hat"],
	["Blue Cap", "H_MilCap_blue", 20, "hat"],
	["Cap (BI)","H_Cap_grn_BI", 20,"hat"],
	["Cap (Black)","H_Cap_blk", 20,"hat"],
	["Cap (Blue)","H_Cap_blu", 20,"hat"],
	["Cap (CMMG)","H_Cap_blk_CMMG", 20,"hat"],
	["Cap (Green)","H_Cap_grn", 20,"hat"],
	["Cap (ION)","H_Cap_blk_ION", 20,"hat"],
	//["Cap (POLICE)","H_Cap_blu_POLICE", 20,"hat"],
	["Cap (Raven Security)","H_Cap_blk_Raven", 20,"hat"],
	["Cap (Red)","H_Cap_red", 20,"hat"],
	["Cap (SAS)","H_Cap_khaki_specops_UK", 20,"hat"],
	//["Cap (SERO)","H_Cap_brn_SERO", 20,"hat"],
	["Cap (SF)","H_Cap_tan_specops_US", 20,"hat"],
	["Cap (SPECOPS)","H_Cap_brn_SPECOPS", 20,"hat"],
	//["Cap (Surfer)","H_Cap_surfer", 20,"hat"],
	["Cap (Tan)","H_Cap_tan", 20,"hat"],
	//["Shemag (Khaki)","H_ShemagOpen_khk", 20,"hat"],
	//["Shemag (Tan)","H_ShemagOpen_tan", 20,"hat"],
	//["Shemag mask(Khaki)","H_Shemag_khk", 20,"hat"],
	//["Shemag mask (Tan)","H_Shemag_tan", 20,"hat"],
	//["Straw Hat","H_StrawHat", 20,"hat"],
	//["Straw Hat (Dark)","H_StrawHat_dark", 20,"hat"],
	//["Checked Cap 1","H_MilCap_chck1", 20,"hat"],
	//["Checked Cap 2","H_MilCap_chck2", 20,"hat"],
	//["Checked Cap 3","H_MilCap_chck3", 20,"hat"],
	["Military Cap (Gray)","H_MilCap_gry", 20,"hat"],
	["Military Cap (Hex)","H_MilCap_ocamo", 20,"hat"],
	["Military Cap (MTP)","H_MilCap_mcamo", 20,"hat"],
	["Military Cap (Russia)","H_MilCap_rucamo", 20,"hat"],
	["Military Cap (Urban)","H_MilCap_oucamo", 20,"hat"],
	["Military Cap (Green)","H_MilCap_dgtl", 20,"hat"],
	["Rangemaster Cap", "H_Cap_headphones", 20, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 250, "hat"],
	//["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 250, "hat"],
	["Crew Helmet","H_HelmetCrew_B", 120,"hat"],
	["Crew Helmet (Green)","H_HelmetCrew_I", 120,"hat"],
	["Crew Helmet (Red)","H_HelmetCrew_O", 120,"hat"],
	["MICH","H_HelmetIA", 120,"hat"],
	["MICH (Camo)","H_HelmetIA_net", 120,"hat"],
	["MICH 2 (Camo)","H_HelmetIA_camo", 120,"hat"],
	["ECH","H_HelmetB", 120,"hat"],
	["ECH (Light)","H_HelmetB_light", 120,"hat"],
	["ECH (Spraypaint)","H_HelmetB_paint", 120,"hat"],
	["SF Helmet","H_HelmetSpecB", 120,"hat"],
	["SF Helmet (Black)","H_HelmetSpecB_blk", 120,"hat"],
	["SF Helmet (Dark Paint)","H_HelmetSpecB_paint2", 120,"hat"],
	["SF Helmet (Light Paint)","H_HelmetSpecB_paint1", 120,"hat"],
	["Protector Helmet (Hex)","H_HelmetO_ocamo", 100,"hat"],
	["Protector Helmet (Urban)","H_HelmetO_oucamo", 100,"hat"],
	["Heli Crew Helmet (Blue)","H_CrewHelmetHeli_B", 120,"hat"],
	["Heli Crew Helmet (Red)","H_CrewHelmetHeli_O", 120,"hat"],
	["Heli Crew Helmet (Green)","H_CrewHelmetHeli_I", 120,"hat"],
	["Heli Pilot Helmet (Blue)","H_PilotHelmetHeli_B", 120,"hat"],
	["Heli Pilot Helmet (Red)","H_PilotHelmetHeli_O", 120,"hat"],
	["Heli Pilot Helmet (Green)","H_PilotHelmetHeli_I", 120,"hat"],	
	["Pilot Helmet (Blue)","H_PilotHelmetFighter_B", 130,"hat"],
	["Pilot Helmet (Red)","H_PilotHelmetFighter_O", 130,"hat"]
	//["Pilot Helmet (Green)","H_PilotHelmetFighter_I", 130,"hat"],
];

uniformArray=
[
	["Fatigues (Hex)","U_O_CombatUniform_ocamo", 100,"uni"],
	//["Fatigues (Urban)","U_O_CombatUniform_oucamo", 100,"uni"],
	//["Recon Fatigues (Black)","U_O_SpecopsUniform_blk", 100,"uni"],
	//["Recon Fatigues (Hex)","U_O_SpecopsUniform_ocamo", 100,"uni"],
	//["Recon Fatigues (MTP)","U_B_CombatUniform_wdl_vest", 100,"uni"],
	//["Recon Fatigues (MTP)","U_B_CombatUniform_sgg_vest", 100,"uni"],
	//["Recon Fatigues (MTP)","U_B_CombatUniform_mcam_vest", 100,"uni"],
	//["Combat Fatigues (MTP)","U_B_CombatUniform_wdl", 100,"uni"],
	//["Combat Fatigues (MTP)","U_B_CombatUniform_sgg", 100,"uni"],
	//["Combat Fatigues (MTP)", "U_B_CombatUniform_mcam", 100, "uni"],
	//["Combat Fatigues (MTP)(TEE)", "U_B_CombatUniform_mcam_tshirt", 100, "uni"],
	//["Combat Fatigues (MTP)(TEE)", "U_B_CombatUniform_wdl_tshirt", 100, "uni"],
	//["Combat Fatigues (MTP)(TEE)", "U_B_CombatUniform_sgg_tshirt", 100, "uni"],
	["Combat Fatigues (Green)", "U_I_CombatUniform", 100, "uni"],
	//["Combat Fatigues (Green)", "U_I_CombatUniform_shortsleeve", 100, "uni"],
	//["Combat Fatigues (Green)", "U_I_CombatUniform_tshirt", 100, "uni"],
	//["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 100, "uni"],
	["Officer Fatigues (Hex)", "U_I_OfficerUniform", 100, "uni"],
	["Worn Combat Fatigues (MTP)", "U_B_CombatUniform_mcam_worn", 100, "uni"],
	["Rangemaster Suit", "U_Rangemaster", 100, "uni"],
	["Wetsuit Blue","U_B_Wetsuit", 200,"uni"],
	["Wetsuit Red","U_O_Wetsuit", 200,"uni"],
	["Wetsuit Green","U_I_Wetsuit", 200,"uni"],
	["Ghillie (Blue)","U_B_GhillieSuit", 450,"uni"],
	["Ghillie (Red)", "U_O_GhillieSuit", 450, "uni"],
	["Ghillie (Green)", "U_I_GhillieSuit", 450, "uni"],
	["Heli Pilot Coveralls Blue", "U_B_HeliPilotCoveralls", 100, "uni"],
	["Heli Pilot Coveralls Green", "U_I_HeliPilotCoveralls", 100, "uni"],
	["Pilot Coveralls Blue", "U_B_HeliPilotCoveralls", 100, "uni"],
	["Pilot Coveralls Red", "U_O_PilotCoveralls", 100, "uni"],
	//["Pilot Coveralls Green", "U_I_pilotCoveralls", 100, "uni"],
	["Competitor Suit","U_Competitor", 50,"uni"],
	//["Jacket and Shorts","U_OrestesBody", 50,"uni"],
	//["Kabeiroi Leader's Outfit","U_IG_Menelaos", 50,"uni"],
	//["Novak's Leisure Suit","U_C_Novak", 50,"uni"],
	//["Scientist Suit","U_OI_Scientist", 50,"uni"],
	["Common Clothes 1","U_C_Commoner1_1", 50,"uni"],
	//["Common Clothes 2","U_C_Commoner1_2", 50,"uni"],
	//["Common Clothes 3","U_C_Commoner1_2", 50,"uni"],
	["Polo Red/White","U_C_Poloshirt_redwhite", 50,"uni"],
	["Polo Salmon","U_C_Poloshirt_salmon", 50,"uni"],
	["Polo tri-color","U_C_Poloshirt_tricolour", 50,"uni"],
	["Polo Blue","U_C_Poloshirt_blue", 50,"uni"],
	["Polo Burgundy","U_C_Poloshirt_burgundy", 50,"uni"],
	["Polo Stripped","U_C_Poloshirt_stripped", 50,"uni"],
	["Underwear","U_BasicBody", 20,"uni"]
	//["Underwear 1","U_NikosBody", 20,"uni"],
	//["Underwear 2","U_MillerBody", 20,"uni"],
	//["Underwear 3","U_KerryBody", 20,"uni"],
	//["Underwear 4","U_AttisBody", 20,"uni"],
	//["Underwear 5","U_AntigonaBody", 20,"uni"]
];

vestArray=
[
	//["Carrier GL Rig (Black)","V_PlateCarrierGL_blk", 250,"vest"],
	["Carrier GL Rig (Green)","V_PlateCarrierGL_rgr", 250,"vest"],
	//["Carrier GL Rig (Coyote)","V_PlateCarrierGL_cbr", 250,"vest"],
	//["Carrier GL Rig (Green)","V_PlateCarrierGL_rgr", 250,"vest"],
	["Carrier Lite (Black)","V_PlateCarrier1_blk", 250,"vest"],
	//["Carrier Lite (Coyote)","V_PlateCarrier1_cbr", 250,"vest"],
	//["Carrier Lite (Green)","V_PlateCarrier1_rgr", 250,"vest"],
	//["Carrier Rig (Black)","V_PlateCarrier2_blk", 250,"vest"],
	//["Carrier Rig (Coyote)","V_PlateCarrier2_cbr", 250,"vest"],
	["Carrier Rig (Green)","V_PlateCarrier3_rgr", 250,"vest"],
	//["Carrier Special Rig (Coyote)","V_PlateCarrierSpec_cbr", 275,"vest"],
	//["Carrier Special Rig (Green)","V_PlateCarrierSpec_rgr", 275,"vest"],
	//["Fighter Chestrig (Olive)","V_ChestrigF_oli", 275,"vest"],
	["GA Carrier GL Rig","V_PlateCarrierIAGL_dgtl", 275,"vest"],
	//["GA Carrier Lite (Digi)","V_PlateCarrierIA1_dgtl", 275,"vest"],
	//["GA Carrier Rig (Digi)","V_PlateCarrierIA2_dgtl", 275,"vest"],
	["LBV Harness", "V_HarnessO_brn", 250, "vest"],
	//["LBV Harness (Gray)", "V_HarnessO_gry", 250, "vest"],
	["LBV Gren Harness", "V_HarnessOGL_brn", 250, "vest"],
	//["LBV Gren Harness (Gray)", "V_HarnessOGL_gry", 250, "vest"],
	["Chest Rig (Khaki)","V_Chestrig_khk", 300,"vest"],
	["Slash Bandolier (Coyote)","V_BandollierB_cbr", 100,"vest"],
	["Slash Bandolier (Green)","V_BandollierB_rgr", 100,"vest"],
	["Slash Bandolier (Khaki)","V_BandollierB_khk", 100,"vest"],
	["Slash Bandolier (Olive)","V_BandollierB_oli", 100,"vest"],
	["Tactical Vest (Black)","V_TacVest_blk", 100,"vest"],
	["Tactical Vest (Brown)","V_TacVest_brn", 100,"vest"],
	["Tactical Vest (Camo)","V_TacVest_camo", 100,"vest"],
	["Tactical Vest (Olive)","V_TacVest_oli", 100,"vest"],
	["Tactical Vest (Khaki)","V_TacVest_khk", 100,"vest"],
	["Tactical Vest (Police)","V_TacVest_blk_POLICE", 100,"vest"],
	["Rangemaster Belt", "V_Rangemaster_belt", 100, "vest"],
	["Rebreather Blue","V_RebreatherB", 250,"vest"],
	["Rebreather Red","V_RebreatherIR", 250,"vest"],
	["Rebreather Green","V_RebreatherIA", 250,"vest"]
	//["Camouflaged Vest","V_TacVestCamo_khk", 100,"vest"],
	//["Raven Vest","V_TacVestIR_blk", 100,"vest"],
];

genItemArray=
[
	["GPS","ItemGPS", 100,"item"],
	["Binoculars","Binocular",100,"binoc"],
	["NV Goggles","NVGoggles",100,"item"],
	["Diving Goggles","G_Diving",100,"gogg"],
	["Rangefinder","Rangefinder",300,"binoc"],   
	["Laser Designator","Laserdesignator",500,"binoc"],
	//["Laser Batteries","Laserbatteries",20,"item"],
	["Mine Detector","MineDetector",200,"item"],
	["First Aid","FirstAidKit", 100,"item"],
	["Medkit","Medikit", 550,"item"],
	["Toolkit","ToolKit", 550,"item"]
];

genObjectsArray=
[
	["Mil Wall Big", "Land_Mil_WallBig_4m_F", 100,"object"],
	["Bar Gate", "Land_BarGate_F", 60,"object"],
	["HBarrier 1", "Land_HBarrier_1_F", 50,"object"],
	["HBarrier 4", "Land_HBarrierWall4_F", 55,"object"],
	["HBarrier 5", "Land_HBarrier_5_F", 60,"object"],
	["HBarrier 6", "Land_HBarrierWall6_F", 70,"object"],
	["HBarrierBig", "Land_HBarrierBig_F", 80,"object"],
	["HBarrier Tower", "Land_HBarrierTower_F", 100,"object"],
	["Bag Fence Long", "Land_BagFence_Long_F", 50,"object"],
	["Concrete Ramp", "Land_RampConcrete_F", 60,"Object"],
	["Concrete Ramp High", "Land_RampConcreteHigh_F", 80,"Object"],
	["Concret Barrier Medium", "Land_CncBarrierMedium4_F", 50,"object"],
	["Concrete Wall","Land_CncWall1_F", 200,"object"],
	["Concret Wall Long", "Land_CncWall4_F", 200,"object"],
	["Concrete Wall Military","Land_Mil_ConcreteWall_F", 300,"object"],
	["Concret Shelter", "Land_CncShelter_F", 200,"object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 60,"object"],
	["Canal Wall", "Land_Canal_WallSmall_10m_F", 200,"object"],
	["Stone Wall 8M", "Land_Stone_8m_F", 60,"object"],
	["Floodlight", "Land_LampShabby_F", 100,"object"],
	["Streetlight", "Land_LampDecor_F", 100,"object"],
	["Portable Toilet", "Land_ToiletBox_F", 50,"object"],
	["Bunker Tower", "Land_BagBunker_Tower_F", 150,"object"],
	["Bunker Large", "Land_BagBunker_Large_F", 200,"object"],
	["Bag Bunker", "Land_BagBunker_Small_F", 100,"object"]
];

//Text name, classname, buy cost, spawn type, color
landArray =
[
	["Quadbike Blue","B_Quadbike_01_F",500,"vehicle",125],
	["Quadbike Red","O_Quadbike_01_F",500,"vehicle",125],
	["Quadbike Green","I_Quadbike_01_F",500,"vehicle",125],
	["Quadbike Civilian","C_Quadbike_01_F",500,"vehicle",125],
	["Fuel Truck I-G","I_G_Van_01_fuel_f",2000,"vehicle",250],
	["Fuel Truck Civilian","C_Van_01_fuel_f",2000,"vehicle",250],
	["Small Transport Truck","C_Van_01_transport_F",2000,"vehicle",250],
	["Small Transport Truck I-G","I_G_Van_01_transport_F",2000,"vehicle",250],
	["Truck Box","C_Van_01_box_f",2000,"vehicle",250],
	["Hatchback","C_Hatchback_01_F",3000,"vehicle",250],
	["Hatchback Sport","C_Hatchback_01_sport_F",5000,250],
	["Offroad","C_Offroad_01_F",3000,"vehicle",250],
	["Offroad I-G","I_G_Offroad_01_F",3000,"vehicle",250],
	["Armed Offroad","I_G_Offroad_01_armed_f",5000,"vehicle",250],
	["SUV","C_SUV_01_F",3500,"vehicle",250],
	["HEMTT Open","B_Truck_01_transport_F",4000,"vehicle",400],
	["HEMTT Covered","B_Truck_01_covered_F",4000,"vehicle",400],
	["Green Truck","I_Truck_02_covered_F",4000,"vehicle",400],
	["Green Truck Open","B_Truck_01_transport_F",4000,"vehicle",400],
	["Zamak Open","O_Truck_02_transport_F",4000,"vehicle",400],
	["Zamak Covered","O_Truck_02_covered_F",4000,"vehicle",400]
]; 

armoredArray =
[
	["Hunter","B_MRAP_01_F",5000,"vehicle",1000],
	["Hunter HMG","B_MRAP_01_hmg_F",7000,"vehicle",3500],
	["Hunter GMG","B_MRAP_01_gmg_F",7000,"vehicle",4000],
	["Ifrit","O_MRAP_02_F",5000,"vehicle",1500],
	["Ifrit HMG","O_MRAP_02_hmg_F",70000,"vehicle",4000],
	["Ifrit GMG","O_MRAP_02_gmg_F",70000,"vehicle",4500],
	["Strider","I_MRAP_03_F",5000,"vehicle",1500],
	["Strider HMG","I_MRAP_03_hmg_F",7000,"vehicle",4000],
	["Strider GMG","I_MRAP_03_gmg_F",7000,"vehicle",4500]
];

tanksArray =
[
	["AMV-7 Marshall","B_APC_Wheeled_01_cannon_F",10000,"vehicle",""],
	["MSE-3 Marid","O_APC_Wheeled_02_rcws_F",10000,"vehicle",""],
	["IFV-6c Panther","B_APC_TRACKED_01_rcws_F",15000,"vehicle",""],
	["BTR Kamysh","O_APC_Tracked_02_cannon_F",15000,"vehicle",""],
	["298 Sochor","O_MBT_02_arty_F",15000,"vehicle",""],
	["CRV-6e Bobcat","B_APC_Tracked_01_crv_F",15000,"vehicle",""],
	["IFV-6a Cheetah","B_APC_Tracked_01_AA_F",15000,"vehicle",""],
	["M2A1 Slammer","B_MBT_01_cannon_F",15000,"vehicle",""],
	["M4 Scorcher","B_MBT_01_arty_F",15000,"vehicle",""],
	["M6 Sandstorm MLRS","B_MBT_01_mirs_F",15000,"vehicle",""],
	["T-100 Varsuk","O_MBT_02_Cannon_f",15000,"vehicle",""],
	["ZSU-39 Tigria","O_APC_Tracked_02_aa_f",15000,"vehicle",""]
];
//	["AFV-4 Gorgon","I_APC_Wheeled_02_rcws_F",10000,"vehicle",""],
helicoptersArray =
[
	["MH-9 Hummingbird","B_Heli_Light_01_F",7000,"vehicle",""],
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle", ""],
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 7000, "vehicle", ""],
	["UH-80 Ghosthawk","B_Heli_Transport_01_F",8000,"vehicle",""],
	["AH-9 Pawnee","B_Heli_Light_01_armed_F",8000,"vehicle",""],
	["PO-30 Orca", "O_Heli_Light_02_F", 8000, "vehicle", ""],
	["AH-99 Blackfoot","B_Heli_Attack_01_F",15000,"vehicle",""],
	["Mi-48 Kajman", "O_Heli_Attack_02_F", 15000, "vehicle", ""]
	//["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 30000, "vehicle", ""]
];

jetsArray =
[
["A-143 Buzzard (AA)","I_Plane_fighter_03_AA_f",15000,"vehicle",""],
["A-143 Buzzard (CAS)","I_Plane_fighter_03_cas_f",15000,"vehicle",""]
];

boatsArray =
[
	["Motorboat","C_boat_civil_01_rescue_F",1750,"boat",500],
	["Motorboat Police","C_Boat_Civil_01_police_F",1750,"boat",500],
	["Motorboat Rescue","C_Boat_Civil_01_F",1750,"boat",500],
	["Assault Boat Blue","B_Boat_Transport_01_F",1750,"boat",500],
	["Assault Boat Red","O_Boat_Transport_01_F",1750,"boat",500],
	["Assault Boat Green","I_Boat_Transport_01_F",1750,"boat",500],
	["Rescue Blue","B_Lifeboat",1500,"boat",500],
	["Rescue Red","O_Lifeboat",1500,"boat",500],
	["Rescue Civilian", "C_Rubberboat", 1500,"boat",500],
	["Speedboat Minigun Blue","B_Boat_Armed_01_minigun_F",7000,"boat",3000],
	["Speedboat HMG","O_Boat_Armed_01_hmg_F",7000,"boat",3500],
	["Speedboat Minigun Green","I_Boat_Armed_01_minigun_F",7000,"boat",500]
];

submarinesArray = 
[
/*
	["SDV Submarine", "B_SDV_01_F", 1500, "submarine", 750],
	["SDV Submarine", "O_SDV_01_F", 1500, "submarine", 750]
*/
];

colorsArray =
[
	["Black", true],
	["White", true],
	["Orange", true],
	["Red", true],
	["Pink", true],
	["Yellow", true],
	["Purple", true],
	["Blue", true],
	["Dark Blue", true],
	["Teal", true],
	["Green", true]
];


//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore =
[
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",50,25],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",50,25],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",300,150],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
	["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25]
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = compileFinal '[
	["Town_1",300,"Kavala"],
	["Town_2",200,"Kore"],
	["Town_3",150,"Sfaka"],
	["Town_4",200,"Feres"],			
	["Town_5",200,"Dorida"],
	["Town_6",200,"Agios Dionysios"],
	["Town_7",200,"Paros"],
	["Town_8",200,"Abdera"],
	["Town_9",200,"Galati"],
	["Town_10",200,"Charkia"],
	["Town_11",150,"Frini"],
	["Town_12",200,"Lakka"],
	["Town_13",200,"Panochori"],
	["Town_14",200,"Athira"],
	["Town_15",200,"Oreo"],
	["Town_16",200,"Molos"],
	["Town_17",200,"Therisa"],	
	["Town_18",200,"Agios Konstantinos"],
	["Town_19",200,"Ifestiona"],
	["Town_20",200,"Alikampos"],
	["Town_22",200,"Katalaki"],
	["Town_23",300,"Aggelochori"]
]';
/*
	["Town_21",200,"Faronaki"],
*/
cityLocations = [];

militarylist = compileFinal str [
		["milSpawn_1"],
		["milSpawn_2"],
		["milSpawn_3"],
		["milSpawn_4"],			
		["milSpawn_5"],
		["milSpawn_6"],
		["milSpawn_7"],
		["milSpawn_8"],
		["milSpawn_9"],
		["milSpawn_10"],
		["milSpawn_11"],
		["milSpawn_12"],
		["milSpawn_13"]
];

captureAreaMarkers = [
	["CAP_POINT_Neri", "Neri", 300],
	["CAP_POINT_Zaros", "Zaros", 300],
	["CAP_POINT_Kastro", "Kastro Ruins", 300],
	["CAP_POINT_Dump", "Airsupply Luis", 300],
	["CAP_POINT_Oreo", "Oreo", 300],
	["CAP_POINT_Makrynis", "Makrynis", 300],
	["CAP_POINT_Main", "Mainfrezzers Favela", 300],
	["CAP_POINT_Vikos", "Vikos", 300],
	["CAP_POINT_Eginio", "Eginio", 300],
	["CAP_POINT_Selakano", "Airfield Selakano", 300],
	["CAP_POINT_Pyrgos", "Pyrgos", 300],
	["CAP_POINT_Kalochori", "Kalochori", 300],
	["CAP_POINT_Sofia", "Sofia", 300],
	["CAP_POINT_AirfieldNorth", "Airfield North", 600],
	["CAP_POINT_AirfieldSouth", "Airfield South", 600],
	["CAP_POINT_AgiosDionysios", "Agios Dionysios", 300],
	["CAP_POINT_Athira", "Athira", 300],
	["CAP_POINT_Oldtrans", "Old Transmission Station", 300],
	["CAP_POINT_Chalkeia", "Chalkeia", 300],
	["CAP_POINT_AAC", "AAC Airfield", 300],
	["CAP_POINT_Camplakka", "Camp Lakka", 300],
	["CAP_POINT_Campnidasos", "Camp Nidasos", 300],
	["CAP_POINT_MOLOAIRFIELD", "Molos Airfield", 300]
];