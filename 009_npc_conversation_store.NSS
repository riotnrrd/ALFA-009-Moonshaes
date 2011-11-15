//::///////////////////////////////////////////////
//:: Name 009_npc_conversation_store
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
	
	Edited by AcadiusLost to add exception for Start Area merchant
*/
//:://////////////////////////////////////////////
//:: Created By: Keith Warner
//:: Created On: June 11/03
//:   10/17/2010: AcadiusLost, edited for Moonshaes use
//:://////////////////////////////////////////////
#include "acr_creature_i"


void main()
{
	ACR_CreatureOnConversation();
	if (GetLocalInt(OBJECT_SELF, "Start") == TRUE) {
	    //SendMessageToAllDMs("StartMerhcant accessed by "+GetName(GetLastSpeaker())+" with xp = "+IntToString(GetXP(GetLastSpeaker())));
	    if (GetXP(GetLastSpeaker()) > 25 ) { 
		    SendMessageToPC(GetLastSpeaker(), "Start Merchant is for starting PCs only.");
			return; 
		}
	}
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