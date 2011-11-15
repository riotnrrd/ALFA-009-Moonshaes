void main()
	{
	object oPC=GetLastUsedBy();
	object oChair=OBJECT_SELF;
	AssignCommand(oPC,ActionJumpToLocation(GetLocation(oChair)));
	PlayCustomAnimation(oPC,"sitidle",1,1.0);
	} 