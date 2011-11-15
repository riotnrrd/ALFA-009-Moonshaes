//::///////////////////////////////////////////////
//:: Name x2_def_onconv
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Default On Conversation script
	
	Edited by AcadiusLost to add exception for Start Area merchant
*/
//:://////////////////////////////////////////////
//:: Created By: Keith Warner
//:: Created On: June 11/03
//:://////////////////////////////////////////////

void main()
{
    //ExecuteScript("nw_c2_default4", OBJECT_SELF);
	if (GetLocalInt(OBJECT_SELF, "Start") == TRUE) {
	    //SendMessageToAllDMs("StartMerhcant accessed by "+GetName(GetLastSpeaker())+" with xp = "+IntToString(GetXP(GetLastSpeaker())));
	    if (GetXP(GetLastSpeaker()) > 25 ) { 
		    SendMessageToPC(GetLastSpeaker(), "Start Merchant is for starting PCs only.");
			return; 
		}
	}
	ExecuteScript("tsm_store_open", OBJECT_SELF);
}