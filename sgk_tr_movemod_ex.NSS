//
// SGK 2007/08/05
//
// Based on a script found on the forum.
//
void main()
{
	object oPC = GetEnteringObject();
	int iEffectID = GetLocalInt(OBJECT_SELF, "iEffectID");
	 if (GetIsObjectValid(oPC))
		{
			effect eCurrent = GetFirstEffect(oPC);
		  	while (GetIsEffectValid(eCurrent))
				{
				    if (GetEffectSpellId(eCurrent)==iEffectID)
						{
			      			RemoveEffect(oPC, eCurrent);
		      				return;
		    			}
					eCurrent = GetNextEffect(oPC);
		  		}
		}
}