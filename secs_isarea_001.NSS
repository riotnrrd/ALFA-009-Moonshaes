int StartingConditional()
{
	object oWP = GetObjectByTag("secs_001_EXT");
	if(GetIsObjectValid(oWP))
		return TRUE;
	return FALSE;
}