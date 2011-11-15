//===============================================================================
// S.E.C.S. Wizard Widget
// By: Zelknolf
// 12/12/2010
//===============================================================================
/*
	This script is designed to be called by the unique power of a widget, being
	used to create a link to one of the SECS system generic areas and to populate
	said area with NPCs or monsters of a given difficulty.
*/
//===============================================================================

void main()
{
	object oCaster = GetItemActivator();

	AssignCommand(oCaster, ActionStartConversation(oCaster, "secs_wizard", TRUE, FALSE, TRUE, TRUE));
}