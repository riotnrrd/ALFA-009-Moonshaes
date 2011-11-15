
//0b_backupdancer_hb

//quick and cheap way to get guys to play animations indefinitely: Dancing and playing a flute.

// DBR 5/31/06


void main()
{
	if (GetLocalInt(GetModule(),"Stop Ambient Life"))
	{
		SetFacingPoint(GetPosition(GetObjectByTag("wp_georg_5")));
		return;
	}

	/*int nRandom=Random(7);
	if (nRandom==0)
		PlayCustomAnimation(OBJECT_SELF,"touchheart", 1);
	else if (nRandom==1)
		PlayCustomAnimation(OBJECT_SELF,"throwarmsloop", 1);
	else if (nRandom==2)
		PlayCustomAnimation(OBJECT_SELF,"idlefidgetflute", 1);
	else if (nRandom==3)
		PlayCustomAnimation(OBJECT_SELF,"playflute", 1);	
	else
		PlayCustomAnimation(OBJECT_SELF,"dance02", 1);*/
	int nRandom=Random(5);
	if (nRandom==0)
	{
		PlayCustomAnimation(OBJECT_SELF,"idlefidgetflute", 1);
		SoundObjectStop(GetObjectByTag("0_snd_flute_1"));
	}
	else 
	{
		PlayCustomAnimation(OBJECT_SELF,"playflute", 1);		
		SoundObjectPlay(GetObjectByTag("0_snd_flute_1"));
	}
}