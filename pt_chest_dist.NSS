// pt_chest_dist
/*
	Description:
	OnDisturbed event for a chest to
	reset it after it has been looted.
	
*/
// PsychicToaster 6.3.07
#include "x0_i0_treasure"

//Time in seconds before chest resets
const float CHEST_RESET_DELAY = 700.0; 
	
void main()
{
	//Do not allow containers with inventories to reset
	if( GetIsObjectValid( GetFirstItemInInventory() ) )
		return;
	
	DelayCommand(CHEST_RESET_DELAY, CTG_SetIsTreasureGenerated(OBJECT_SELF, FALSE) );
}