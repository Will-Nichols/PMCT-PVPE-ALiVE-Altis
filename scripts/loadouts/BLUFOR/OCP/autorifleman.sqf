//autorifleman.sqf
_unit = player;
params ["_camo"];
//remove existing items
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
removeAllWeapons _unit;
sleep 0.1;


/* camo variants
	0: OCP
	1: Black
	2: Green
	3: DCU
	4: White
*/
//add uniform
switch (_camo) do {
	case 0: { //OCP
				_unit forceAddUniform "TFA_mcam";
				_unit addVest "TFA_PlateCarrierH_MCam";
				_unit addHeadgear "TFA_H_HelmetIA_mcam";
				_unit addBackpack "TFA_assault_Mcam";
			};
	case 1: { //BLK
				_unit forceAddUniform "TFA_Black";
				_unit addVest "TFA_PlateCarrierH_Black";
				_unit addHeadgear "TFA_Mich_Black";
				_unit addBackpack "TFA_assault_Blk";
			};
	case 2: { //GREEN
				_unit forceAddUniform "TFA_green";
				_unit addVest "TFA_PlateCarrierH_Grn";
				_unit addHeadgear "TFA_H_HelmetIA_GRN";
				_unit addBackpack "TFA_assault_FOL";
			};
	case 3: { //DCU
				_unit forceAddUniform "TFA_tri";
				_unit addVest "TFA_PlateCarrierH_Tan";
				_unit addHeadgear "TFA_H_HelmetIA_TRI";
				_unit addBackpack "TFA_assault_Tan";
			};
	case 4: { //White
				_unit forceAddUniform "TFA_white";
				_unit addVest "TFA_PlateCarrierH_WTE";
				_unit addHeadgear "TFA_H_HelmetIA_wte";
				_unit addBackpack "TFA_assault_wte";
			};			

				};

//add common items
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemGPS";
_unit addItemToBackpack "NVGoggles";
_unit linkItem "tf_anprc152";
_unit addItemToVest "ACE_MapTools";

//add binoculars
_unit addWeapon "Binocular";

//add items
_unit addItemToVest "ACE_EarPlugs";
_unit addItemToVest "FHQ_optic_AIM";
_unit addItemToVest "ACE_microDAGR";
_unit addItemToBackpack "ACE_SpareBarrel";
_unit addItemToVest "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
//add weapons
_unit addWeapon "CUP_lmg_M249_para";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
//add medical supplies
if (ace_medical_level == 1) then {
for "_i" from 1 to 8 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 7 do {_unit addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_epinephrine";};
};
for "_i" from 1 to 5 do {_unit addItemToVest "ACE_morphine";};
if (ace_medical_level == 2) then {
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_packingBandage";};
};
//add ammo
for "_i" from 1 to 2 do {_unit addItemToUniform "HandGrenade";};
for "_i" from 1 to 3 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellRed";};
_unit addItemToVest "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";};

_unit setSpeaker "ACE_NoVoice";