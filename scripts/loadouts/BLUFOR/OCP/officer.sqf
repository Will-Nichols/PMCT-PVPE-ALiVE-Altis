//officer.sqf
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

//add uniform
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
				_unit addBackpack "TFA_511_MCAM";
			};
	case 1: { //BLK
				_unit forceAddUniform "TFA_Black";
				_unit addVest "TFA_PlateCarrierH_Black";
				_unit addHeadgear "TFA_Mich_Black";
				_unit addBackpack "TFA_511_BLK";
			};
	case 2: { //GREEN
				_unit forceAddUniform "TFA_green";
				_unit addVest "TFA_PlateCarrierH_Grn";
				_unit addHeadgear "TFA_H_HelmetIA_GRN";
				_unit addBackpack "TFA_511_GRN";
			};
	case 3: { //DCU
				_unit forceAddUniform "TFA_tri";
				_unit addVest "TFA_PlateCarrierH_Tan";
				_unit addHeadgear "TFA_H_HelmetIA_TRI";
				_unit addBackpack "TFA_511_DCU";
			};
	case 4: { //White
				_unit forceAddUniform "TFA_white";
				_unit addVest "TFA_PlateCarrierH_WTE";
				_unit addHeadgear "TFA_H_HelmetIA_wte";
				_unit addBackpack "TFA_511_white";
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

//add designator and batteries
_unit addWeapon "Laserdesignator";
_unit addItem "laserbatteries";

//add items
_unit addItemToUniform "ACE_Clacker";
_unit addItemToUniform "ACE_DefusalKit";
_unit addItemToVest "ACE_EarPlugs";
_unit addItemToVest "FHQ_optic_AIM";
_unit addItemToVest "ACE_microDAGR";
_unit addItemToVest "ALiVE_Tablet";
//add primary mags
_unit addItemToVest "CUP_30Rnd_556x45_Stanag";
_unit addItemToVest "CUP_18Rnd_9x19_Phantom";
//add weapons
_unit addWeapon "CUP_arifle_M4A1_BUIS_GL";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addWeapon "CUP_hgun_Phantom";
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
for "_i" from 1 to 9 do {_unit addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 7 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToVest "CUP_18Rnd_9x19_Phantom";};

_unit setSpeaker "ACE_NoVoice";