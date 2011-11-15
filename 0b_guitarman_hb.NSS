
//0b_guitarman_hb

//quick and cheap way to get guys to play animations indefinitely: Playing the Lute.

// DBR 5/31/06


void main()
{
	if (GetLocalInt(GetModule(),"Stop Ambient Life"))
	{
		SetFacingPoint(GetPosition(GetObjectByTag("wp_georg_5")));
		return;
	}

	int nRandom=Random(5);
	if (nRandom==0)
	{
		PlayCustomAnimation(OBJECT_SELF,"idlefidgetguitar", 1);
		SoundObjectStop(GetObjectByTag("0_snd_lute_1"));
	}
	else if (nRandom==1)
	{
		PlayCustomAnimation(OBJECT_SELF,"idleguitar", 1);
		SoundObjectStop(GetObjectByTag("0_snd_lute_1"));
	}
	else
	{
		PlayCustomAnimation(OBJECT_SELF,"playguitar", 1);
		SoundObjectPlay(GetObjectByTag("0_snd_lute_1"));
	}
}