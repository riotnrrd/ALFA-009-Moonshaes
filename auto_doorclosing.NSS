void main()
{
   object    oDoor1          = OBJECT_SELF;
   object    oDoor2          = GetTransitionTarget(oDoor1);
   float  	 fShutDefault  	 = 15.0;
   float     fShutDelay      = GetLocalFloat(oDoor1, "AUTO_SHUT_DELAY");
   
   if(fShutDelay == -1.0)
	{
      return;
	}
   else if(fShutDelay == 0.0)
	{
      fShutDelay = fShutDefault;
	} 
   AssignCommand(oDoor1, DelayCommand(fShutDelay, ActionCloseDoor(oDoor1)));
   AssignCommand(oDoor2, DelayCommand(fShutDelay, ActionCloseDoor(oDoor2)));

if (GetLocalInt(OBJECT_SELF, "LOCK_DOOR") == 1)
    SetLocked(OBJECT_SELF, TRUE);    
} 