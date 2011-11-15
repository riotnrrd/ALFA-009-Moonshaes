// =============================================================
//
//    File: row_store_open
//    Desc: Rowell's Open a Store Script (with or without conv)
//  Author: Michael Marzilli
//    Site: http://www.engliton.org
//
// Created: Nov 06, 2006
// Updated: Nov 06, 2006
// Version: 1.0.0
//
//   Usage: Use this script to open a store defined in a
//          LocalString stored on the calling object, called
//          "row_store_tag".
//
// Example: Place a LocalString called "row_store_tag", with the
//          value of "weapon_store" on an NPC Merchant.  
//          When the NPC calls this script, the store called
//          "weapon_store" will be opened.
//
// =============================================================

//#include "row_inc_factions"


void main() {
	object oPC            = GetLastSpeaker();
	object oNPC           = OBJECT_SELF;
	string sStore         = GetLocalString(oNPC, "row_store_tag");
	object oStore         = GetNearestObjectByTag(sStore);  


			
	// ABORT IF THE STORE IS NOT AVAILABLE
	if (oStore == OBJECT_INVALID) {
	  AssignCommand(oNPC, ActionSpeakString("I'm sorry, we are currently closed."));
	  return;
	}
	
	// OPEN THE STORE
	OpenStore(oStore, oPC);
	AssignCommand(oNPC, ActionSpeakString("Take a look at my wares."));	
}