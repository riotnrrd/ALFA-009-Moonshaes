void main()
{
	object oUser = GetExitingObject();
	if(GetLocalInt(oUser, "secs_at") == 2)
		SetLocalInt(oUser, "secs_at", 1);
	else		
		DeleteLocalInt(oUser, "secs_at");	
}