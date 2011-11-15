#include "ex_menu_inc"
#include "sys_tat_ex_inc"
#include "nw_i0_tool"
/*
nActionNode:
  1 = Target wigget
  2 = Portal spawn = Spawns a DM portal. DM is the target location.
  
sString:
  Dice Targeter = Spawns a dice targeting wigget.
  Portal        = 
  "Local"         = Sets a local Int "local" Should be the variable name. nVariable becomes the value  
*/

#include "ex_menu_inc"
void main(int nActionNode, string sString, int nVariable){
    object oDM = GetPCSpeaker();

	if(nActionNode == 1){
	   object oItem = CreateItemOnObject(DM_WIGGET_PRINT_TAG, oDM);
	   SetFirstName(oItem, sString);
	   return;
	                    }
	if(nActionNode == 2){
	// Portal
	return;
	                    }
	if(nActionNode == 3){// ENCOUNTERS ON/OFF
	   int nSwitch;
	   object oSwitchHolder = GetArea(oDM);
	   if(GetLocalInt(oSwitchHolder, NESS_ENCOUNTER_ON_OFF) == NESS_ENCOUNTER_ON) nSwitch = NESS_ENCOUNTER_OFF;
	   if(GetLocalInt(oSwitchHolder, NESS_ENCOUNTER_ON_OFF) == NESS_ENCOUNTER_OFF) nSwitch = NESS_ENCOUNTER_ON;
	   SetLocalInt(oSwitchHolder, NESS_ENCOUNTER_ON_OFF, nSwitch);
	   return;
	                    }
	if(nActionNode == 4){// AREA INFORMATION
	   object oArea = GetArea(oDM);
       
	 //  if(GetLocalInt(oSwitchHolder, NESS_ENCOUNTER_ON_OFF) == NESS_ENCOUNTER_ON) nSwitch = NESS_ENCOUNTER_OFF;
	 //  if(GetLocalInt(oSwitchHolder, NESS_ENCOUNTER_ON_OFF) == NESS_ENCOUNTER_OFF) nSwitch = NESS_ENCOUNTER_ON;	   
	   return;
	                    }
	if(nActionNode == 5){
	object oArea = GetArea(oDM);
	int nSwitch;
       if(GetLocalInt(oArea, AREA_CLEANER_SWITCH) == AREA_CLEANER_ON) nSwitch = AREA_CLEANER_OFF;
	   if(GetLocalInt(oArea, AREA_CLEANER_SWITCH) == AREA_CLEANER_OFF) nSwitch = AREA_CLEANER_ON;
	   SetLocalInt(oArea, AREA_CLEANER_SWITCH, nSwitch);
	   return;	
	                    }
	if(nActionNode == 6){
	   object oArea = GetArea(oDM);
	   if(sString == "yes")SetLocalInt(oArea, "DMCLEAN", 1); //not checking for PC's
	   if(sString == "no")SetLocalInt(oArea, "DMCLEAN", 2); //  checking for PC's
	   DelayCommand(1.0, CleanArea(oArea));
	   return;
	                    }			
	// Create the portal							
	if(nActionNode == 7){
	   location lLoc = GetLocation(oDM);
	   
	   object oPortal = CreateObject(OBJECT_TYPE_PLACEABLE,"dm_portal", lLoc);
	   SetLocalObject(oDM, "DM_PORTAL", oPortal);
	   return;
	                    }		
	// Use the portal					
	if(nActionNode == 8){
	   location lLoc = GetLocalLocation(OBJECT_SELF, "PORTAL_DST");
	   
	   AssignCommand(oDM, JumpToLocation(lLoc));
	   return;
	                    }
	// Create location for portal								
	if(nActionNode == 9){
	   location lLoc = GetLocation(oDM);
	   object oPortalobject = GetLocalObject(oDM, "DM_PORTAL");
	   if(!GetIsObjectValid(oPortalobject))return;
	   SetLocalLocation(oPortalobject, "PORTAL_DST", lLoc);
	   
	   return;
	                    }
	// Destroy dm portal					
	if(nActionNode == 10){
	  object oPortalObject = GetNearestObjectByTag("dm_portal");
	   
	   DestroyObject(oPortalObject);
	   return;
	                    }		
		if(nActionNode == 11){
	   location lLoc = GetLocation(GetNearestObjectByTag("dm_portal"));
	   
	   AssignCommand(oDM, JumpToLocation(lLoc));
	   return;
	                    }	
			if(nActionNode == 12){
	   ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_SUMMON_GATE), oDM);
	   return;
	                    }
		if(nActionNode == 13){
	   ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_GREATER_RUIN), oDM);
	   return;
	                    }		
		if(nActionNode == 14){
		object oTarget = GetLocalObject(oDM, "WIGGET_TARGET");
	       //int nBaseAward = 100;
		      // nBaseAward = nBaseAward*nVariable;
		   GiveXPToCreature(oTarget, nVariable);
		   SendMessageToPC(oTarget, sString);
	   return;
	                    }
		if(nActionNode == 15){
		object oTarget = GetLocalObject(oDM, "WIGGET_TARGET");
		string sName = GetName(oTarget);
		object oAward = CreateItemOnObject("", oTarget, 1);
		SetFirstName(oAward, "DM Award: "+sName);
	   return;
	                    }		
		if(nActionNode == 16){
		object oTarget = GetLocalObject(oDM, "WIGGET_TARGET");
	       object oMember = GetFirstFactionMember(oTarget);
		   while(GetIsObjectValid(oTarget)){
		         GiveXPToCreature(oMember, nVariable);
		         SendMessageToPC(oMember, sString);
		         oMember = GetNextFactionMember(oTarget);
		                                   }
		   
	   return;
	                    }																	
																																		
           }