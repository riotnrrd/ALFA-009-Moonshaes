#include "acr_spawn_i"

void main();
// Created by Riotnrrd for ALFA 4/2012
// Temperate Hills Random Encounters
// Encounter Level 2 - 9

/* 
Day:
6% Adventurers
8% Basilisk
6% Black Bears
8% Dire Badger
10% Ettins
6% Gargoyles
6% Goblin Patrol
10% Halfling Scouts
2% Hellhounds
4% Hobgoblin Gang
6% Ogres
6% Orc Gang
4% Werewolves
14% Wolf Pack
4% Wyvern

Night:
2% Black Bears
2% Dire Badger
4% Dread Warrior Company
6% Ettins
4% Gargoyles
4% Ghast Gang
2% Ghast Pack
4% Ghoul Gang
5% Goblin Patrol
5% Goblin Raiders
4% Hellhounds
6% Hobgoblin Gang
6% Ogres
5% Orc Gang
5% Orc Patrol
4% Shadow Gang
4% Vampire Spawn Pack
6% Werewolves
4% Wight Gang
10% Wolf Pack
4% Wraiths
4% Wyvern

*/

void main() {

	int nRoll = d100();
	int i;

	if (GetIsDay()) 
	{ 
		if (nRoll <= 6) ACR_SpawnGroup("adventurers");
		else if (nRoll <= 14) ACR_SpawnObject("abr_cr_mb_basilisk", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 20) ACR_SpawnGroup("black_bears");
		else if (nRoll <= 28) ACR_SpawnObject("abr_cr_an_direbadger", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 38) ACR_SpawnGroup("ettins");
		else if (nRoll <= 44) ACR_SpawnGroup("gargoyles");
		else if (nRoll <= 50) ACR_SpawnGroup("goblin_patrol");
		else if (nRoll <= 60) ACR_SpawnGroup("halfling_scouts");
		else if (nRoll <= 62) ACR_SpawnGroup("hellhounds");
		else if (nRoll <= 66) ACR_SpawnGroup("hobgoblin_gang");
		else if (nRoll <= 72) ACR_SpawnGroup("ogres");
		else if (nRoll <= 78) ACR_SpawnGroup("orc_gang");
		else if (nRoll <= 82) ACR_SpawnGroup("werewolves");
		else if (nRoll <= 96) ACR_SpawnGroup("wolf_pack");
		else ACR_SpawnObject("abr_cr_dr_wyvern", OBJECT_TYPE_CREATURE);
	}	
	else	// Is night
	{
		if (nRoll <= 2) ACR_SpawnGroup("black_bears");
		else if (nRoll <= 4) ACR_SpawnObject("abr_cr_an_direbadger", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 8) ACR_SpawnGroup("dreadwarrior_company");
		else if (nRoll <= 14) ACR_SpawnObject("ettins", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 18) ACR_SpawnGroup("gargoyles");
		else if (nRoll <= 22) ACR_SpawnGroup("ghast_gang");
		else if (nRoll <= 24) ACR_SpawnGroup("ghast_pack");
		else if (nRoll <= 28) ACR_SpawnGroup("ghoul_gang");
		else if (nRoll <= 33) ACR_SpawnGroup("goblin_patrol");
		else if (nRoll <= 38) ACR_SpawnGroup("goblin_raiders");
		else if (nRoll <= 42) ACR_SpawnGroup("hellhounds");
		else if (nRoll <= 48) ACR_SpawnGroup("hobgoblin_gang");
		else if (nRoll <= 54) ACR_SpawnGroup("ogres");
		else if (nRoll <= 59) ACR_SpawnGroup("orc_gang");
		else if (nRoll <= 64) ACR_SpawnGroup("orc_patrol");
		else if (nRoll <= 68) ACR_SpawnGroup("shadow_gang");
		else if (nRoll <= 72) ACR_SpawnGroup("vampire_spawn_pack");
		else if (nRoll <= 78) ACR_SpawnGroup("werewolves");
		else if (nRoll <= 82) ACR_SpawnGroup("wight_gang");
		else if (nRoll <= 92) ACR_SpawnGroup("wolf_pack");
		else if (nRoll <= 96) ACR_SpawnGroup("wraiths");
		else ACR_SpawnObject("abr_cr_dr_wyvern", OBJECT_TYPE_CREATURE);
	}
}