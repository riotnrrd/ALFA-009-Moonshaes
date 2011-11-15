void main()
{
// --- Placeables ---
/*
* In the OnUsed event of a non-static placeable, this will
* start the placeable's default conversation (set on the
* advanced tab of Placeable Properties) with a PC that
* uses the placeable.
*/
ActionStartConversation( GetLastUsedBy() );
}