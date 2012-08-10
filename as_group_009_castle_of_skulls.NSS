// Created by Riotnrrd for ALFA 8/2012
// Castle of Skulls, Gwynneth Isle, Moonshaes
// Lot of undead, some evil planar
// Encounter Level 7-9

// Abishai Pair, assorted colors
// Baneguard Squad
// Barghest Pack or Greater Barghest Pack
// Bodak Pair
// Bebilith
// Curst, 1 (5th or 7th level)
// Dread Warrior Company
// Flesh Golem Pair
// Ghast Pack
// Ghoul Pack
// Shadow Mastiff Pair
// Vampire, 1 (5th or 7th level)
// Vampire Spawn Pack
// Wight Gang

#include "acr_spawn_i"

void main() {

	int nRoll = d100();
	int i;

	if (nRoll <= 8) {
		int nType = d100();
		if (nType <= 20) ACR_SpawnGroup("abishais_black");
		else if (nType <= 40) ACR_SpawnGroup("abishais_blue");
		else if (nType <= 60) ACR_SpawnGroup("abishais_green");
		else if (nType <= 80) ACR_SpawnGroup("abishais_red");
		else ACR_SpawnGroup("abishais_white");
	}
	else if (nRoll <= 16) ACR_SpawnGroup("baneguard_squad");
	else if (nRoll <= 24) {
		int nType = d2();
		if (nType == 1) ACR_SpawnGroup("barghest_pack");
		else ACR_SpawnGroup("barghest_gr_pack");
	}
	else if (nRoll <= 32) ACR_SpawnGroup("bodaks");
	else if (nRoll <= 40) ACR_SpawnObject("abr_cr_ou_bebilith", OBJECT_TYPE_CREATURE);
	else if (nRoll <= 48) {
		int nType = d2();
		if (nType == 1) ACR_SpawnObject("abr_cr_un_curst_ftr5", OBJECT_TYPE_CREATURE);
		else ACR_SpawnObject("abr_cr_un_curst_ftr7", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 56) ACR_SpawnGroup("dreadwarrior_company");
	else if (nRoll <= 64) ACR_SpawnGroup("flesh_golems");
	else if (nRoll <= 72) ACR_SpawnGroup("ghast_pack");
	else if (nRoll <= 80) ACR_SpawnGroup("ghoul_pack");
	else if (nRoll <= 88) ACR_SpawnGroup("shadow_mastiffs");
	else if (nRoll <= 88) {
		int nType = d2();
		if (nType == 1) ACR_SpawnObject("abr_cr_un_vampire_sor5", OBJECT_TYPE_CREATURE);
		else ACR_SpawnObject("abr_cr_un_vampire_sor7", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 96) ACR_SpawnGroup("vampire_spawn_pack");
	else ACR_SpawnGroup("wight_gang");
}