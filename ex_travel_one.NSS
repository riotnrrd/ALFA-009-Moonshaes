void main(){
     object oPC = GetEnteringObject();
	 object oSelf = OBJECT_SELF;
	 
	 string sTag = GetTag(oSelf);
	 location lLoc = GetLocation(GetWaypointByTag("DST"+sTag));
	 AssignCommand(oPC , JumpToLocation(lLoc));
           }