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

// Created by Riotnrrd for ALFA 7/2012
// Drake Veneshuel guardsman patrol
void main() {
	int nNPCs = d3() + 2;
	int i;
	object oCreature;
	
	for (i = 0; i < nNPCs; i++) {
		int nType = d10();
		if (nType <= 8)	{
			object oNPC = ACR_SpawnObject("009_cr_npc_drakewarrior", OBJECT_TYPE_CREATURE);
			int nName = d12();
			if (nName == 1) SetFirstName(oNPC, "Veneshuel Warrior Arich Woodhand");
			else if (nName == 2) SetFirstName(oNPC, "Veneshuel Warrior Nelson Scheuerman");
			else if (nName == 3) SetFirstName(oNPC, "Veneshuel Warrior Fern Scheuerman");
			else if (nName == 4) SetFirstName(oNPC, "Veneshuel Warrior Lonnie Dobles");
			else if (nName == 5) SetFirstName(oNPC, "Veneshuel Warrior Julio Dennie");
			else if (nName == 6) SetFirstName(oNPC, "Veneshuel Warrior Jenny Bennings");
			else if (nName == 7) SetFirstName(oNPC, "Veneshuel Warrior Jay-Jay Bennings");
			else if (nName == 8) SetFirstName(oNPC, "Veneshuel Warrior Lireed Abbotts");
			else if (nName == 9) SetFirstName(oNPC, "Veneshuel Warrior Lonnie Abels");
			else if (nName == 10) SetFirstName(oNPC, "Veneshuel Warrior Kell Emert");
			else if (nName == 11) SetFirstName(oNPC, "Veneshuel Warrior Teama Haymak");
			else SetFirstName(oNPC, "Veneshuel Warrior Edwina Fling");
		}
		else {
			object oNPC = ACR_SpawnObject("009_cr_npc_drakeacolyte", OBJECT_TYPE_CREATURE);
			SetFirstName(oNPC, "Veneshuel Adept");
		}
	}
}