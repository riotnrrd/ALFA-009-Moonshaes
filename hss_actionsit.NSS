// script_name:  hss_sit
/*
	Description:
	
	Workaround sitting functions since ActionSit() is broken (as of 1.11)
	and I'm not overly optimistic that it can/will be fixed.
	
	This script goes in the seat placeable's ON LEFT CLICK event and NOT
	the On Used event as might be expected.
	
	
*/
// Name_Date:  Heed, Dec. 9th, 2006.
// Updated:    Heed, Feb 21, 2008

void main()
{
   object oPC = GetPlaceableLastClickedBy();
   object oSeat = OBJECT_SELF;
   
   //a bit of a sanity check on use distance -- don't want PC's using seats
   //as some sort of pathing aid all over the area.   
   if (GetDistanceBetween(oPC, oSeat) > 20.0)
      {
	  AssignCommand(oPC, ClearAllActions());
	  SendMessageToPC(oPC, "You need to move closer to the seat to sit down.");
	  return;
	  }

   //someone is on the way to sit down, so no more clicks allowed
   SetUseableFlag(oSeat, FALSE);
   //re-enable seat on a delay -- ensures seat will become useable again as
   //assigning this to oPC might fail if oPC crashes en route.
   DelayCommand(15.0, SetUseableFlag(oSeat, TRUE));	  
	  
   //if already seated, then end that routine before starting the new one.
   if (GetIsObjectValid(GetLocalObject(oPC, "HSS_SEAT_TO_SIT")))
      {
	  //a seated creature will have 0 actions queued -- if actions are
	  //queued, then oPC is in the process of sitting and clicking on another
	  //seat is disallowed until fully seated.
	  if (GetNumActions(oPC) > 0)
	     {
		 return;
		 }
	  CloseGUIScreen(oPC, "SCREEN_HSS_ACTIONSIT");
	  //need a delay so the close gui routines complete first
	  DelayCommand(1.0, SetLocalObject(oPC, "HSS_SEAT_TO_SIT", oSeat));
	  DelayCommand(1.01, DisplayGuiScreen(oPC, "SCREEN_HSS_ACTIONSIT", FALSE, "hss_actionsit.xml"));
	  DelayCommand(1.02, SetGUIObjectDisabled(oPC, "SCREEN_HSS_ACTIONSIT", "HSS_ACTIONSIT_ICON", TRUE));
	  }
	  //not sitting now, so just begin sit routine.
	  else
	  {
      SetLocalObject(oPC, "HSS_SEAT_TO_SIT", oSeat);    
      DisplayGuiScreen(oPC, "SCREEN_HSS_ACTIONSIT", FALSE, "hss_actionsit.xml");
	  SetGUIObjectDisabled(oPC, "SCREEN_HSS_ACTIONSIT", "HSS_ACTIONSIT_ICON", TRUE);
	  }
  
}