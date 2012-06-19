void main()
{
	object PCclick;
	object resval;
	
	PCclick = GetLastUsedBy();
	
	resval = CreateItemOnObject("009_woodland_mushrooms",PCclick);
		
	if (!GetIsObjectValid(resval)) 
		SpeakOneLinerConversation("Fsck, invalid item");

	DestroyObject(OBJECT_SELF);
}