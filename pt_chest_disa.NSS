// pt_chest_disa
/*
	Description:
	OnDisarm script to re-arm a trapped chest
	
*/
// PsychicToaster 6.20.07
// Frylock 4.24.08 - Fix script so it regenerates traps.

void create_random_trap();
void create_random_trap()
{
	object oTrap;
	int iTrapDetDC    = 10 + Random(9);
	int iTrapDisarmDC = 10 + Random(9);
	int iTrapType =TRAP_BASE_TYPE_MINOR_ACID_SPLASH;
	string sTag = GetTag(OBJECT_SELF);
	
	
	if(StringCompare(sTag,"pt_chest_0")==0
	|| StringCompare(sTag,"pt_chest_1")==0
	|| StringCompare(sTag,"pt_chest_2")==0){
		switch(d8()){
			case 1:  iTrapType=TRAP_BASE_TYPE_MINOR_ACID_SPLASH; break; 
			case 2:  iTrapType=TRAP_BASE_TYPE_MINOR_ELECTRICAL; break; 
			case 3:  iTrapType=TRAP_BASE_TYPE_MINOR_FIRE; break; 
			case 4:  iTrapType=TRAP_BASE_TYPE_MINOR_FROST; break; 
			case 5:  iTrapType=TRAP_BASE_TYPE_MINOR_GAS; break; 
			case 6:  iTrapType=TRAP_BASE_TYPE_MINOR_SONIC; break; 
			case 7:  iTrapType=TRAP_BASE_TYPE_MINOR_SPIKE; break; 
			case 8:  iTrapType=TRAP_BASE_TYPE_MINOR_TANGLE; break; 
		}
	}
	if(StringCompare(sTag,"pt_chest_3")==0
	|| StringCompare(sTag,"pt_chest_4")==0){
		 iTrapDetDC    = 10 + Random(10);
		 iTrapDisarmDC = 10 + Random(10);
		switch(d8()){
			case 1:  iTrapType=TRAP_BASE_TYPE_AVERAGE_ACID_SPLASH; break; 
			case 2:  iTrapType=TRAP_BASE_TYPE_AVERAGE_ELECTRICAL; break; 
			case 3:  iTrapType=TRAP_BASE_TYPE_AVERAGE_FIRE; break; 
			case 4:  iTrapType=TRAP_BASE_TYPE_AVERAGE_FROST; break; 
			case 5:  iTrapType=TRAP_BASE_TYPE_AVERAGE_GAS; break; 
			case 6:  iTrapType=TRAP_BASE_TYPE_AVERAGE_SONIC; break; 
			case 7:  iTrapType=TRAP_BASE_TYPE_AVERAGE_SPIKE; break; 
			case 8:  iTrapType=TRAP_BASE_TYPE_AVERAGE_TANGLE; break; 
		}
	}
	
	if(StringCompare(sTag,"pt_chest_5")==0){
	   	 iTrapDetDC    = 15 + Random(7);
		 iTrapDisarmDC = 15 + Random(7);
		switch(d8()){
	        case 1:  iTrapType=TRAP_BASE_TYPE_STRONG_ACID_SPLASH; break; 
			case 2:  iTrapType=TRAP_BASE_TYPE_STRONG_ELECTRICAL; break; 
			case 3:  iTrapType=TRAP_BASE_TYPE_STRONG_FIRE; break; 
			case 4:  iTrapType=TRAP_BASE_TYPE_STRONG_FROST; break; 
			case 5:  iTrapType=TRAP_BASE_TYPE_STRONG_GAS; break; 
			case 6:  iTrapType=TRAP_BASE_TYPE_STRONG_SONIC; break; 
			case 7:  iTrapType=TRAP_BASE_TYPE_STRONG_SPIKE; break; 
			case 8:  iTrapType=TRAP_BASE_TYPE_STRONG_TANGLE; break; 
		}
	}
	
	if(StringCompare(sTag,"pt_chest_6")==0){
		 iTrapDetDC    = 15 + Random(10);
		 iTrapDisarmDC = 15 + Random(10);
		switch(d8()){
			case 1:  iTrapType=TRAP_BASE_TYPE_DEADLY_ACID_SPLASH; break; 
			case 2:  iTrapType=TRAP_BASE_TYPE_DEADLY_ELECTRICAL; break; 
			case 3:  iTrapType=TRAP_BASE_TYPE_DEADLY_FIRE; break; 
			case 4:  iTrapType=TRAP_BASE_TYPE_DEADLY_FROST; break; 
			case 5:  iTrapType=TRAP_BASE_TYPE_DEADLY_GAS; break; 
			case 6:  iTrapType=TRAP_BASE_TYPE_DEADLY_SONIC; break; 
			case 7:  iTrapType=TRAP_BASE_TYPE_DEADLY_SPIKE; break; 
			case 8:  iTrapType=TRAP_BASE_TYPE_DEADLY_TANGLE; break; 
		}
	}
	
	if(StringCompare(sTag,"pt_chest_7")==0){
		iTrapDetDC    = 16 + Random(15);
		 iTrapDisarmDC = 16 + Random(15);
		switch(d8()){
        	case 1:  iTrapType=TRAP_BASE_TYPE_EPIC_ELECTRICAL; break; 
			case 2:  iTrapType=TRAP_BASE_TYPE_EPIC_ELECTRICAL; break; 
			case 3:  iTrapType=TRAP_BASE_TYPE_EPIC_FIRE; break; 
			case 4:  iTrapType=TRAP_BASE_TYPE_EPIC_FROST; break; 
			case 5:  iTrapType=TRAP_BASE_TYPE_EPIC_FIRE; break; 
			case 6:  iTrapType=TRAP_BASE_TYPE_EPIC_SONIC; break; 
			case 7:  iTrapType=TRAP_BASE_TYPE_EPIC_SONIC; break; 
			case 8:  iTrapType=TRAP_BASE_TYPE_EPIC_FROST; break; 
		}
	}
	
	CreateTrapOnObject( iTrapType, OBJECT_SELF, STANDARD_FACTION_HOSTILE);
	//oTrap=CreateTrapAtLocation(iTrapType,GetLocation(GetWaypointByTag(lTarget)), 1.0, "trap111",STANDARD_FACTION_HOSTILE);
	SetTrapDisarmDC(OBJECT_SELF, iTrapDisarmDC);
	SetTrapOneShot(OBJECT_SELF, TRUE);
	SetTrapDetectDC(OBJECT_SELF, iTrapDetDC);
	return;
}

void main()
{
	//DelayCommand(1200.0, SetTrapActive(OBJECT_SELF, TRUE) );
	//DelayCommand(1200.0, SetTrapOneShot(OBJECT_SELF, TRUE) );
	DelayCommand(780.0, create_random_trap() );	
}