//kudos to HolyStorm from NWN2 forums for the script
//goes in OnSpawn and OnConversation. Set Unbumpable

void main()
{
	// Don't face the speaker
	float fFacing = GetFacing(OBJECT_SELF);
	SetFacing(fFacing);
	if(GetLocalInt(OBJECT_SELF, "doOnce") == FALSE)
   	 {
      	SetLocalInt(OBJECT_SELF, "doOnce", TRUE);
      	effect eStatue = EffectVisualEffect(VFX_DUR_FREEZE_ANIMATION);
     	// Is the object Plot?
     	if(GetPlotFlag(OBJECT_SELF) == TRUE)
      	 {
       		SetPlotFlag(OBJECT_SELF, FALSE);
      	 }
     	// Is the object Immortal?
     	if(GetImmortal(OBJECT_SELF) == TRUE)
      	 {
       		SetImmortal(OBJECT_SELF, FALSE);
      	 }
		 
	//Apply the effect..
      	ApplyEffectToObject(DURATION_TYPE_PERMANENT, eStatue, OBJECT_SELF);
    	//Make sure it is Plot and Immortal (Again).
    	SetPlotFlag(OBJECT_SELF, TRUE);
    	SetImmortal(OBJECT_SELF, TRUE);
   	 }
}