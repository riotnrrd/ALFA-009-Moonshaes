// 2009/03/02 edit: AcadiusLost

int StartingConditional()
{
    // returns whether the PC is a Favored Soul.
 	if  (GetLevelByClass(CLASS_TYPE_FAVORED_SOUL, GetPCSpeaker())) {
		return TRUE;
	} else {
		return FALSE;
	}
}