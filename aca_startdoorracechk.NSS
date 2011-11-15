// 2009/03/02 edit: AcadiusLost
// 2009/04/09 edit: Wynna

int StartingConditional()
{
    // returns whether the PC should be allowed to leave the start area.
    int nSubRace = GetSubRace(GetPCSpeaker());
	if ((nSubRace == RACIAL_SUBTYPE_AASIMAR) || (nSubRace == RACIAL_SUBTYPE_TIEFLING)|| (nSubRace == RACIAL_SUBTYPE_HALFCELESTIAL) 
		|| (nSubRace == RACIAL_SUBTYPE_AIR_GENASI) || (nSubRace == RACIAL_SUBTYPE_EARTH_GENASI) 
		|| (nSubRace == RACIAL_SUBTYPE_FIRE_GENASI) || (nSubRace == RACIAL_SUBTYPE_WATER_GENASI) 
		|| (nSubRace == RACIAL_SUBTYPE_GRAYORC) || (nSubRace == RACIAL_SUBTYPE_GRAY_DWARF)
		|| (nSubRace == RACIAL_SUBTYPE_DROW)|| (nSubRace == RACIAL_SUBTYPE_YUANTI))
	
		{return TRUE;}
		
		else
		{return FALSE;}
 
}