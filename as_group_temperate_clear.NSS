#include "acr_spawn_i"

void main();
// Created by Riotnrrd for ALFA 4/2012
// Temperate Clear Random Encounters
// Encounter Level 1-5

/* 
Day:
10% Neutral Animals
10% Militia
10% Patrol
9% Bandits
4% Dire Rats 1d4
4% Gargoyle 1
5% Gnoll Hunters
5% Kobolds 1d6+3
10% Neutral NPCs 1d3+2
11% Merchants
4% Leopard 1d2
4% Werewolf 1
9% Wolf 1d4
5% Boar 1d2

Night:
7% Neutral Animals
5% Militia
5% Patrol
6% Bandits
2% Baneguard 1
4% Dire Rat 1d4
2% Dread Warrior 1
2% Gargoyle 1
4% Ghast 1
2% Ghoul 1d3+1
2% Gnoll Hunters
5% Goblin Patrol
2% Hell Hound 1
5% Kobold 1d6+3
8% Neutral NPCs 1d3+2
5% Ogre 1d2
9% Orc 1d3+1
4% Skeleton (Medium) 1d6
2% Leopard 1d2
2% Vampire Spawn 1d2
5% Werewolf 1
2% Wight 1d2
4% Wolf 1d4
2% Worg 1d2
4% Zombie, medium 1d4+1

Groups:
Animals:
25% Horses 1d3+1
25% Badger 1d3+2
25% Eagle 1d3
25% Rabbits 1d3+1
Militia: 1d4+4 1st level warriors
Patrol: 1d3+1 1st level fighters + 1d2 2nd level leaders (ranger, cleric, fighter, etc)
Bandits: 1d3+1 1st level warriors + 1d2 lvl 2 leaders (fighters, clerics, rangers, etc)
Gnoll Hunters: 1d4+1 gnolls, led by 3rd level gnoll ranger
Goblin Patrol: 1d6+3 goblins, 1 2nd level goblin fighter
Merchants: 2d4 1st level commoners, 2d4 1st level warriors, 1d2 2nd level leaders (ranger, cleric, fighter, etc)
*/

void main() {

	int nRoll = d100();
	int i;

	if (GetIsDay()) 
	{ 
		if (nRoll <= 10) {	//10% Animals
			int nType = d100();
			if (nType <= 25) {
				int nHorses = d3() + 1;
				for (i = 0; i < nHorses; i++) ACR_SpawnObject("abr_cr_an_horse", OBJECT_TYPE_CREATURE);
			}
			else if (nType <= 50) {
				int nBadgers = d3() + 2;
				for (i = 0; i < nBadgers; i++) ACR_SpawnObject("abr_cr_an_badger", OBJECT_TYPE_CREATURE);
			}
			else if (nType <= 75) {
				int nRabbits = d3() + 1;
				for (i = 0; i < nRabbits; i++) ACR_SpawnObject("abr_cr_an_rabbit", OBJECT_TYPE_CREATURE);
			}
			else {
				int nBirds = d3();
				for (i = 0; i < nBirds; i++) ACR_SpawnObject("abr_cr_an_bird", OBJECT_TYPE_CREATURE);
			}
		}
		else if (nRoll <= 20) ACR_SpawnGroup("militia");
		else if (nRoll <= 30) ACR_SpawnGroup("patrol");
		else if (nRoll <= 39) ACR_SpawnGroup("bandits");
		else if (nRoll <= 43)	//4% Dire Rats 1d4
		{
			int nRats = d4();
			for (i = 0; i < nRats; i++) ACR_SpawnObject("abr_cr_an_direrat", OBJECT_TYPE_CREATURE);
		}
		else if (nRoll <= 47) ACR_SpawnObject("abr_cr_mh_gargoyle", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 52) ACR_SpawnGroup("gnolls");
		else if (nRoll <= 57) ACR_SpawnGroup("kobold_gang");
		else if (nRoll <= 67) ACR_SpawnGroup("adventurers");
		else if (nRoll <= 78) ACR_SpawnGroup("merchants");
		else if (nRoll <= 82)
		{
			int nLeopards = d2();
			for (i=0; i < nLeopards; i++) ACR_SpawnObject("abr_cr_an_leopard", OBJECT_TYPE_CREATURE);
		}
		//4% Werewolf 1
		else if (nRoll <= 86) ACR_SpawnObject("abr_cr_ly_werewolf", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 95)
		{
			int nWolves = d4();
			for (i=0; i < nWolves; i++) ACR_SpawnObject("abr_cr_an_wild_wolf", OBJECT_TYPE_CREATURE);
		}
		//5% Boar 1d2
		else 
		{
			int nBoars = d2();
			for (i=0; i < nBoars; i++) ACR_SpawnObject("abr_cr_an_boar", OBJECT_TYPE_CREATURE);
		}
	}	
	else	// Is night
	{
		//	7% Animals
		if (nRoll <= 7)
		{
			int nType = d100();
			if (nType <= 25) {
				int nHorses = d3() + 1;
				for (i = 0; i < nHorses; i++) ACR_SpawnObject("abr_cr_an_horse", OBJECT_TYPE_CREATURE);
			}
			else if (nType <= 50) {
				int nBadgers = d3() + 2;
				for (i = 0; i < nBadgers; i++) ACR_SpawnObject("abr_cr_an_badger", OBJECT_TYPE_CREATURE);
			}
			else if (nType <= 75) {
				int nRabbits = d3() + 1;
				for (i = 0; i < nRabbits; i++) ACR_SpawnObject("abr_cr_an_rabbit", OBJECT_TYPE_CREATURE);
			}
			else {
				int nBirds = d3();
				for (i = 0; i < nBirds; i++) ACR_SpawnObject("abr_cr_an_bird", OBJECT_TYPE_CREATURE);
			}
		}
		else if (nRoll <= 12) ACR_SpawnGroup("militia");
		else if (nRoll <= 17) ACR_SpawnGroup("patrol");
		else if (nRoll <= 23) ACR_SpawnGroup("bandit_gang");
		else if (nRoll <= 25) ACR_SpawnObject("abr_cr_un_baneguard", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 29)
		{
			int nRats = d4();
			for (i = 0; i < nRats; i++) ACR_SpawnObject("abr_cr_an_direrat", OBJECT_TYPE_CREATURE);
		}
		else if (nRoll <= 31) ACR_SpawnObject("abr_cr_un_dreadwarrior", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 33) ACR_SpawnObject("abr_cr_mh_gargoyle", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 37) ACR_SpawnObject("abr_cr_un_ghast", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 39) ACR_SpawnGroup("ghoul_gang");
		else if (nRoll <= 41) ACR_SpawnGroup("gnolls");
		else if (nRoll <= 46) ACR_SpawnGroup("goblin_patrol");
		else if (nRoll <= 48) ACR_SpawnObject("abr_cr_ou_hellhound", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 53) ACR_SpawnGroup("kobold_gang");
		else if (nRoll <= 61) ACR_SpawnGroup("adventurers");
		else if (nRoll <= 66 )ACR_SpawnGroup("ogres");
		else if (nRoll <= 75) ACR_SpawnGroup("orc_gang");
		else if (nRoll <= 79) ACR_SpawnGroup("skeletons");
		//	2% Leopards 1d2
		else if (nRoll <= 81)
		{
			int nLeopards = d2();
			for (i=0; i < nLeopards; i++) ACR_SpawnObject("abr_cr_an_leopard", OBJECT_TYPE_CREATURE);
		}
		//	2% Vampire Spawn 1d2
		else if (nRoll <= 83)
		{
			int nSpawns = d2();
			for (i = 0; i < nSpawns; i++) ACR_SpawnObject("abr_cr_un_vampirespawn", OBJECT_TYPE_CREATURE);
		}
		//	5% Werewolf 1
		else if (nRoll <= 88) ACR_SpawnObject("abr_cr_ly_werewolf", OBJECT_TYPE_CREATURE);
		else if (nRoll <= 90) ACR_SpawnGroup("wights");
		//	4% Wolf 1d4
		else if (nRoll <= 94)
		{
			int nWolves = d4();
			for (i=0; i < nWolves; i++) ACR_SpawnObject("abr_cr_an_wild_wolf", OBJECT_TYPE_CREATURE);
		}
		//	2% Worg 1d2
		else if (nRoll <= 96)
		{
			int nWorgs = d2();
			for (i = 0; i < nWorgs; i++) ACR_SpawnObject("abr_cr_mb_worg", OBJECT_TYPE_CREATURE);
		}
		//	4% Zombie, medium 1d4+1
		else
		{
			int nZombies = d4() + 1;
			for (i = 0; i < nZombies; i++) ACR_SpawnObject("abr_cr_un_zombie", OBJECT_TYPE_CREATURE);
		}
	}
}