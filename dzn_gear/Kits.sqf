// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM
#define ASSIGNED_ITEMS_B		"ItemMap","ItemCompass","ItemWatch","ItemRadio"


#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//Por

#define por_u ["CUP_U_CRYE_G3C_MC_V2","CUP_U_CRYE_G3C_MC_V3","CUP_U_CRYE_MCAM_NP_Full","CUP_U_CRYE_MCAM_NP_Roll","CUP_U_CRYE_MCAM_NP2_Full","CUP_U_CRYE_MCAM_NP2_Roll"]
#define por_h ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_mar_ut_pelt","rhsusf_opscore_ut"]
#define por_g ["CUP_G_Oakleys_Drk","CUP_G_Oakleys_Clr","CUP_G_ESS_RGR","CUP_G_ESS_KHK_Dark",""]

#define por_w_r ["CUP_arifle_Mk16_STD","CUP_arifle_Mk16_STD_AFG","CUP_arifle_Mk16_STD_FG"]
#define por_a_r ["CUP_30Rnd_556x45_PMAG_QP","CUP_30Rnd_556x45_PMAG_QP","CUP_30Rnd_556x45_PMAG_QP"]

kit_por_pl = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_communications_coy","tf_rt1523g","CUP_H_Beret_HIL","CUP_G_PMC_RadioHeadset_Glasses_Dark"],
	["<PRIMARY WEAPON >>  ",por_w_r,por_a_r,["","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_Elcan_SpecterDR_KF_black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShell",2],["SmokeShellRed",2]]]
];

kit_por_sl = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_tlbelt_coy","tf_rt1523g",por_h,por_g],
	["<PRIMARY WEAPON >>  ",por_w_r,por_a_r,["","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_Elcan_SpecterDR_KF_black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShell",2],["SmokeShellRed",2]]]
];

kit_por_ftl = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_communicationsbelt_coy","",por_h,por_g],
	["<PRIMARY WEAPON >>  ",por_w_r,por_a_r,["","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_Elcan_SpecterDR_KF_black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["CUP_HandGrenade_M67",2],["SmokeShellGreen",1],["SmokeShell",1],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_por_ar = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_lightbelt_coy","rhsusf_falconii_mc",por_h,por_g],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_S_para_vfg2","CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch",["","","CUP_optic_ElcanM145_PIP","rhsusf_acc_grip4_bipod"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_por_gr = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_weaponsbelt_coy","rhsusf_falconii_mc",por_h,por_g],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Mk16_STD_EGLM","CUP_30Rnd_556x45_PMAG_QP",["","CUP_acc_Flashlight","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_M203",10]]]
];

kit_por_r = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_Fastbelt_coy","rhsusf_falconii_mc",por_h,por_g],
	["<PRIMARY WEAPON >>  ",por_w_r,por_a_r,["","CUP_acc_Flashlight","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M136_Loaded","CUP_M136_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch",2]]]
];

kit_por_medic = [
	["<EQUIPEMENT >>  ",por_u,"CUP_V_CPC_Fastbelt_coy","rhsusf_falconii_mc",por_h,por_g],
	["<PRIMARY WEAPON >>  ",por_w_r,por_a_r,["","CUP_acc_Flashlight","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["CUP_HandGrenade_M67",2],["rhsusf_mag_17Rnd_9x19_FMJ",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_personalAidKit",4],["ACE_surgicalKit",1],["ACE_elasticBandage",20],["ACE_fieldDressing",20],["ACE_packingBandage",10],["ACE_quikclot",20],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_tourniquet",10]]]
];

cargo_kit_cargo = [
	[],
	[["CUP_30Rnd_556x45_PMAG_QP",20],["CUP_HandGrenade_M67",10],["rhsusf_mag_17Rnd_9x19_FMJ",10],["CUP_1Rnd_HE_M203",20],["CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch",5]],
	[],
	[]
];

kit_un_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_CDF_DST_1","CUP_V_I_RACS_Carrier_Vest_3","","CUP_H_CDF_H_PASGT_UN",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_Early","CUP_30Rnd_545x39_AK74_plum_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_01_F","10Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

//ins

#define ins_u ["U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Bandit_3_F","U_I_L_Uniform_01_tshirt_olive_F","U_BG_Guerilla2_3","U_I_C_Soldier_Bandit_5_F","U_I_L_Uniform_01_deserter_F","U_C_Man_casual_6_F","U_C_Poloshirt_salmon","U_BG_Guerilla2_2"]
#define ins_v ["CUP_V_O_Ins_Carrier_Rig_Light","CUP_V_O_Ins_Carrier_Rig_Com","CUP_V_O_Ins_Carrier_Rig","CUP_V_O_SLA_Carrier_Belt02","CUP_V_B_GER_Carrier_Rig_2_Brown","V_TacChestrig_grn_F"]
#define ins_h ["H_Bandanna_sgg","H_Bandanna_camo","H_Booniehat_khk","CUP_H_FR_BandanaGreen","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Grey","CUP_H_PMC_Cap_Burberry","CUP_H_RUS_Cap_EMR","CUP_H_US_BOONIE_Alpenflage","CUP_H_Booniehat_CCE","CUP_H_Booniehat_TTS",""]

#define ins_w_r ["CUP_arifle_FNFAL5061_wooden","CUP_arifle_FNFAL5062","CUP_arifle_FNFAL5060","CUP_arifle_AKMS_Early","CUP_arifle_AKS74_Early","CUP_arifle_AKS74U","CUP_srifle_M14","CUP_smg_Mac10","CUP_arifle_AKM","CUP_arifle_G3A3_ris"]
#define ins_a_r ["CUP_20Rnd_762x51_FNFAL_M","CUP_20Rnd_762x51_FNFAL_M","CUP_20Rnd_762x51_FNFAL_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M","CUP_20Rnd_762x51_DMR","CUP_30Rnd_45ACP_MAC10_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_20Rnd_762x51_G3"]

#define ins_w_mg ["CUP_lmg_PKM","CUP_lmg_FNMAG","CUP_lmg_M60E4_norail_wood"]
#define ins_a_mg ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"]

#define ins_w_gr ["CUP_arifle_AKMS_GL","CUP_arifle_AK74_GL","CUP_arifle_AKS74_GL_Early"]
#define ins_a_gr ["CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M"]

kit_ins_r = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_r,ins_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_mg = [
	["<EQUIPEMENT >>  ",ins_u,"CUP_V_O_Ins_Carrier_Rig_MG","",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_mg,ins_a_mg,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_gr = [
	["<EQUIPEMENT >>  ",ins_u,"CUP_V_O_SLA_Carrier_Belt03","",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_gr,ins_a_gr,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",6],["CUP_1Rnd_HE_GP25_M",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_at = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"CUP_B_RPGPack_Khaki",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_r,ins_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_OG7_M",2],["SECONDARY MAG",1]]]
];

kit_ins_rpg18 = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_r,ins_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];