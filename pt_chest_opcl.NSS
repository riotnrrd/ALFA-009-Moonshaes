// pt_chest_opcl
/*
	Description:
	Probability-based loot generation to augment
	Bioware/Obsidian's default system
	
	For use in Open/Close scripts in chests to provide
	an opportunity for a chest to produce a range of loot.
*/
// PsychicToaster 6.3.07

void main()
{
	//Percentage chance of loot generation.  There is a chance that
	//even with loot generated it will be converted to gold.
	int nChanceLow;
	int nChanceMed;
	int nChanceHigh;
	int nChanceUniq;

	//Level of the Chest, specified by variable on object
	int nChestLevel = GetLocalInt(OBJECT_SELF, "CHEST_LEVEL");
	if(nChestLevel > 7)
		nChestLevel = 7;
	if(nChestLevel < 0)
		nChestLevel = 0;
	
	//Roll for chest
	int nRoll = d100();
	
	//Setup Loot Probabilities based on Chest Level
	switch(nChestLevel){
		case 0 :
		case 1 : 
			nChanceLow  = 80;
			nChanceMed  = 10;
			nChanceHigh = 0;
			nChanceUniq = 0;
			break;
			
		case 2 :
			nChanceLow  = 90;
			nChanceMed  = 60;
			nChanceHigh = 0;
			nChanceUniq = 0;
			break;
			
		case 3 :
			nChanceLow  = 100;
			nChanceMed  = 80;
			nChanceHigh = 4;
			nChanceUniq = 0;
			break;
		
		case 4 :
			nChanceLow  = 100;
			nChanceMed  = 80;
			nChanceHigh = 10;
			nChanceUniq = 1;
			break;
			
		case 5 :
			nChanceLow  = 100;
			nChanceMed  = 80;
			nChanceHigh = 15;
			nChanceUniq = 2;
			break;
						
		case 6 :
			nChanceLow  = 100;
			nChanceMed  = 80;
			nChanceHigh = 18;
			nChanceUniq = 3;
			break;
						
		case 7 :
			nChanceLow  = 100;
			nChanceMed  = 90;
			nChanceHigh = 22;
			nChanceUniq = 4;
			break;
	}//Chest level probabilities set up
	
	//Start with rarest first
	if(nRoll < nChanceUniq){
		ExecuteScript("x0_o2_anyuniq", OBJECT_SELF);
		// ExecuteScript("x0_o2_anymed", OBJECT_SELF);
		return;
	}
	else if(nRoll < nChanceHigh){
		ExecuteScript("x0_o2_anyhigh", OBJECT_SELF);
		// ExecuteScript("x0_o2_anymed", OBJECT_SELF);
		return;
	}
	else if(nRoll < nChanceMed){
		ExecuteScript("x0_o2_anymed", OBJECT_SELF);
		// ExecuteScript("x0_o2_anylow", OBJECT_SELF);
		return;
	}
	else if(nRoll < nChanceLow){
		ExecuteScript("x0_o2_anylow", OBJECT_SELF);
		// ExecuteScript("x0_o2_anylow", OBJECT_SELF);
		return;
	}
	else{
		ExecuteScript("x0_o2_goldlow", OBJECT_SELF);
		ExecuteScript("x0_o2_goldlow", OBJECT_SELF);
		//ExecuteScript("x0_o2_goldmed", OBJECT_SELF);
		return;
	}
}