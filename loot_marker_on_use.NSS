void main()
{
object oPC=GetLastUsedBy();
GiveGoldToCreature(oPC,10000,FALSE);
AssignCommand(OBJECT_SELF,ActionStartConversation(oPC,"loot_marker_conv",
					TRUE,FALSE,FALSE,TRUE));
}