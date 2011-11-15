/*
Edited by: Alucelestria
Edit Date: 2/18/2007
Edit Changes:
changed to allow other things to happen.  As of now this was a quicky
to set a condition place a variable int on the door named "DOOR_CONDITIONS"
then set its value:
0 or 1 = close door
2 = close and lock the door.

You may also change the delay time by altering the doors 
WILL saving throw to what ever.


NOTE: Not setting a condition or delay time will revert to simply closing the 
      door. So these changes wont increase your work load with changes.
*/

const float DEFAULT_CLOSE_DELAY_TIME = 10.0;
const int DOOR_CONDITION_INVALID_CONDITION = 0;
const int DOOR_CLOSE = 1;
const int DOOR_CLOSE_LOCK = 2;
// These two are not available as the functions dont support door traps.
const int DOOR_CLOSE_TRAP = 3;
const int DOOR_CLOSE_LOCK_TRAP = 4;



void main(){
     object oDoorobject = OBJECT_SELF;
	 int nDoorobjectConditions = GetLocalInt(oDoorobject, "DOOR_CONDITIONS");
	 float fDelay = IntToFloat(GetWillSavingThrow(oDoorobject));
	 
	 // Check the custom delay time. If it does not exsist, 
	 // use default delay time.
	 if(fDelay <=1.0) fDelay = DEFAULT_CLOSE_DELAY_TIME;
	 

	// Default condition											 
	 if(nDoorobjectConditions == DOOR_CLOSE||nDoorobjectConditions == DOOR_CONDITION_INVALID_CONDITION){
        DelayCommand(fDelay, ActionCloseDoor(OBJECT_SELF));
		                                    }
	
	 if(nDoorobjectConditions == DOOR_CLOSE_LOCK){
        DelayCommand(fDelay, ActionCloseDoor(OBJECT_SELF));
		DelayCommand(fDelay+0.1, ActionLockObject(OBJECT_SELF));
		                                    }		
											
	
																																															
           }