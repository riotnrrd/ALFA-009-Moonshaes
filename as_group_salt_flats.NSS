////////////////////////////////////////////////////////////////////////////////
//
//  System Name : ACR Spawn System
//     Filename : as_group_complex.nss
//      Version : 1.3
//         Date : 2007-4-24
//       Author : Ronan
//
//  Description
//  This is a complex example of a spawn group script which is used by the ACR's
//  spawn system. Though the name of the script is "as_group_complex", the spawn
//  point which uses this script would simply have "complex" listed as a spawn
//  group name, since the "as_group_" is always added on to the beginning. This
//  example is intended for people familiar with programming. For a simpler
//  example, see the script as_group_example.
//
//  Revision History
//  1.0 2006-09-17: Ronan - Inception
//  1.1 2007-04-24: AcadiusLost: altered to use ABR resource names.
//  1.2 2007-04-26: AcadiusLost: switched placables to base-pallete resources
//  1.3 2007-04-27: AcadiusLost: fixed a typo in placables
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Includes ////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// This line is required on all spawn group scripts.
#include "acr_spawn_i"

////////////////////////////////////////////////////////////////////////////////
// Constants ///////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Structures //////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Global Variables ////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Function Prototypes /////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// This is the main function, which is what the spawn system runs when this
// spawn group is spawned.
void main();

////////////////////////////////////////////////////////////////////////////////
// Function Definitions ////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// Created by Riotnrrd for ALFA 4/2012
void main() {
// Salt Flats EL 1-5 
// Created by Riotnrrd for ALFA 4/2012
	int nRoll = d100();
	int i;

	if (nRoll <= 10) {	//Bandits 
		ACR_SpawnGroup("bandits");
	}
	else if (nRoll <= 20) // Dire Rats
	{
		int nRats = d10() + 3;
		for (i = 0; i < nRats; i++) ACR_SpawnObject("abr_cr_an_direrat", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 30) //Dread Warrior
	{
		int nDreads = d2();
		for (i = 0; i < nDreads; i++) ACR_SpawnObject("abr_cr_un_dreadwarrior", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 40) //Fishermen
	{
		int nFishermen = d3() + 2;
		for (i = 0; i < nFishermen; i++) ACR_SpawnObject("exodus_fisherman", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 50) // Ghast
	{
		int nGhasts = d2();
		for (i = 0; i < nGhasts; i++) ACR_SpawnObject("abr_cr_un_ghast", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 60) //Lizardfolk
	{
		int nLizardfolk = d2() + 1;
		for (i = 0; i < nLizardfolk; i++) ACR_SpawnObject("abr_cr_hu_lizardfolk", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 70) //Pirates
	{
		ACR_SpawnGroup("pirate_patrol");
	}
	else if (nRoll <= 80) //Sea Hag
	{
		ACR_SpawnObject("abr_cr_mh_seahag", OBJECT_TYPE_CREATURE);
	}
	else if (nRoll <= 90) //Wererat
	{
		int nWererats = d2();
		for (i = 0; i < nWererats; i++) ACR_SpawnObject("abr_cr_ly_wererat", OBJECT_TYPE_CREATURE);
	}
	else //Zombies
	{
		int nZombies = d4() + 1;
		for (i = 0; i < nZombies; i++) ACR_SpawnObject("abr_cr_un_zombie", OBJECT_TYPE_CREATURE);
	}
}