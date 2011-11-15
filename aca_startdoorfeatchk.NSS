// 2009/03/02 edit by AcadiusLost
// 2009/04/11 edit by Wynna

int StartingConditional()
{
    // returns whether the PC should be allowed to leave the start area.
	object oPC = GetPCSpeaker();
 
	// check for Heritage Feats
	if (GetHasFeat(FEAT_FEY_HERITAGE, oPC) || GetHasFeat(FEAT_FIENDISH_HERITAGE, oPC)) {
		// check for token
	    	return TRUE;
		} else {
			return FALSE;
		}	
	
}