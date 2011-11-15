//
// SGK 2007/08/05
//
// Based on a script found on the forum.
// Use with the trigger "Movement Modifier" to set the variables
// make sure that the "iEffectID" is *UNIQUE* to every trigger
// there are some issues with overlapping triggers and the decreased movement icon

void main()
{
	object oPC = GetEnteringObject();
	int iMod = GetLocalInt(OBJECT_SELF, "iModifier");
	int iEffectID = GetLocalInt(OBJECT_SELF, "iEffectID");

	//remove survival ranks from modifier
	int iSurvival = GetSkillRank(SKILL_SURVIVAL,oPC);
	//check if survival skill is usable
	if (iSurvival == -1)
		{
			iSurvival = -10; // penalty for not having skill
		}
	if (iSurvival == 0)
		{
			iSurvival = -5; // penalty for skill not trained
		}
				
	// apply modifier to movement decrease
	iMod = iMod + iSurvival * 2;
	// check if negative or above 95
	if (iMod < 0)
		{
			iMod = 0;
		}
	if (iMod > 95)
		{
			iMod = 95;
		}
	//apply movement effect

	effect eEffect = EffectMovementSpeedDecrease(iMod);

	if (GetIsObjectValid(oPC))
  		{
   			ApplyEffectToObject(DURATION_TYPE_PERMANENT, SetEffectSpellId(eEffect,iEffectID), oPC);
		}
}