#include "acr_placeable_i"

void main() {
		
	ACR_PlaceableOnUsed();
	
	object oPC = GetLastUsedBy();
	SendMessageToPC(oPC, "Using start area door");
	AssignCommand(oPC, ActionStartConversation(oPC, "009_startarea", TRUE, FALSE));
	
}