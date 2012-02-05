//::///////////////////////////////////////////////////////////////////////////
//::
//::	ga_henchman_remove
//::
//::	Removes a target creature from your party (must be a henchman, not a companion).
//::
//::        Parameters:
//::			sTarget - tag of the creature you want to remove. _Is NPC speaker_ no longer used.
//::			sOptionalMasterTag - No longer used.
//::
//::///////////////////////////////////////////////////////////////////////////
// DBR 1/28/06
// ChazM 10/18/06 - sOptionalMasterTag no longer used.
// ChazM 7/17/07 - added clear actions to get rid of following

// Should reference the speaking NPC generally
// T-Ice 4. Feb 09

#include "ginc_param_const"
#include "ginc_henchman"

// sOptionalMasterTag no longer used
void main()
{
	object oMaster, oHench;
	
	oHench = OBJECT_SELF;
			
	oMaster = GetMaster(oHench);
	
	HenchmanRemove(oMaster,oHench);
	// Henchmen will still be following, so clear actions to get rid of that
	AssignCommand(oHench, ClearAllActions());
	
}