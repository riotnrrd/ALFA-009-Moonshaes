// node 1 = standard quests

#include "inc_pwplug_questdb"
#include "inc_pwcore_time"

void main(string sQuestTag, int nState, int nSeverWide=FALSE)
{	object oPC = GetPCSpeaker();
	
	// Adjust quest state in DB/local as needed
	
			//SetLocalString(oPC, LV_PC_QUESTUSER, TI_CurrentTime());
			QST_AddQuest(sQuestTag, nState, oPC, FALSE, nSeverWide, FALSE);
			SetLocalInt(oPC, sQuestTag, nState);
			
														
                  

}