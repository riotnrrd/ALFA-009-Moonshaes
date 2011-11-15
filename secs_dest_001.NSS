void main()
{
	object oWaypoint = GetObjectByTag("secs_001_ext", 0);
//	DestroyObject(GetObjectByTag("secs_001_ext", 1));
	object oAoE = GetNearestObject(OBJECT_TYPE_AREA_OF_EFFECT, oWaypoint, 1);	
	DestroyObject(oWaypoint);
	DestroyObject(oAoE);
}