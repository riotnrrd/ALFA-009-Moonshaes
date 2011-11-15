/*
FOR A STANDARD 3 PART QUEST.
node 0 =  main quest node?
node 1 =  Is on quest?
node 2 =  Is 1/2 Done?
node 3 =  Is Done

sItem = if has this item return nShow

*/

#include "inc_pwplug_questdb"
#include "inc_pwcore_time"


int StartingConditional(string sQuest, int nStartState, int nEndState){
	object oPC = GetPCSpeaker();
    int nLocal = GetLocalInt(oPC, sQuest);
    int nResult = FALSE;
    
    if(nLocal == 0){
       nLocal = QST_GetQuestState(oPC, sQuest);
       SetLocalInt(oPC, sQuest, nLocal);
                   } 
    
    if(nLocal >= nStartState && nLocal <= nEndState) nResult = TRUE;
    
    return nResult;
                                                  }