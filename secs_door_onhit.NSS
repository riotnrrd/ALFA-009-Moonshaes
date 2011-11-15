//==========================================================
// secs_door_onhit
// By: Zelknolf
// Date: 12/25/2010
//==========================================================
/*
	This script handles attempts by PCs to force a door
	open. It allows them to gather bonuses from the use
	of (Improved) Power Attack of the use of heavy blunt
	weapons (while giving penalties for the use of light
	piercing weapons) and defaults to a DC of 20.
	
	Builders may set a FORCE_DC on the doors to determine
	how difficult they are to open, if the default is
	not appropriate for whatever reason.
*/
//==========================================================

void main()
{
	int nDC = GetLocalInt(OBJECT_SELF, "FORCE_DC");
	if(nDC == 0)
		nDC = 20;
	
	object oPC = GetLastAttacker();
	
	int nStrength = GetAbilityModifier(ABILITY_STRENGTH, oPC);
	
	object oWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
	if(GetIsObjectValid(oWeapon))
	{
		int nWeaponType = GetBaseItemType(oWeapon);
		if(nWeaponType == BASE_ITEM_CLUB)
		{
			SendMessageToPC(oPC, "Your club proves to be a reasonable tool for forcing the door.");
			nStrength++;
		}
		else if(nWeaponType == BASE_ITEM_DAGGER)
		{
			SendMessageToPC(oPC, "As it turns out, daggers are bad at bashing doors in.");
			nStrength = nStrength - 5;
		}
		else if(nWeaponType == BASE_ITEM_DIREMACE)
		{
			SendMessageToPC(oPC, "You are able to use your dire mace like a sledgehammer to break the door.");
			nStrength = nStrength + 2;
		}
		else if(nWeaponType == BASE_ITEM_GREATCLUB)
		{
			SendMessageToPC(oPC, "It seems that an oversized club is the ideal tool for this job.");
			nStrength = nStrength + 5;
		}
		else if(nWeaponType == BASE_ITEM_MORNINGSTAR)
		{
			SendMessageToPC(oPC, "Your morning star proves to be a capable tool for breaking the door open.");
			nStrength = nStrength + 2;
		}
		else if(nWeaponType == BASE_ITEM_RAPIER)
		{
			SendMessageToPC(oPC, "You think for a moment about trying to bash down a door with a rapier, but decide that it's not actually worth breaking your sword over.");
			nStrength = nStrength - 50;			
		}
		else if(nWeaponType == BASE_ITEM_SPEAR || nWeaponType == BASE_ITEM_SHORTSPEAR)
		{
			SendMessageToPC(oPC, "Though your spear is able to put marks on the door, it doesn't seem to be doing a very good job of forcing it open.");
			nStrength = nStrength - 3;
		}
		else if(nWeaponType == BASE_ITEM_SHORTSWORD)
		{
			SendMessageToPC(oPC, "Your sword seems to be too light to make much of an impact on this door.");
			nStrength = nStrength - 3;
		}
		else if(nWeaponType == BASE_ITEM_WARHAMMER)
		{
			SendMessageToPC(oPC, "Your warhammer proves to be an excellent tool for breaking in the door");
			nStrength = nStrength + 3;			
		}
		else if(nWeaponType == BASE_ITEM_WARMACE)
		{
			SendMessageToPC(oPC, "Your war mace is the ideal tool for bashing in doors.");
			nStrength = nStrength + 5;
		}
		else if(nWeaponType = BASE_ITEM_WHIP)
		{
			SendMessageToPC(oPC, "While your efforts to whip the door open are quite amusing,  they're not especially effective.");
			nStrength = nStrength - 50;
		}
	}
	if(GetHasFeat(FEAT_IMPROVED_POWER_ATTACK, oPC))
	{
		SendMessageToPC(oPC, "Your advanced training in aggressive fighting helps your effort to break the door.");
		nStrength = nStrength + 6;
	}
	if(GetHasFeat(FEAT_POWER_ATTACK, oPC))
	{
		SendMessageToPC(oPC, "Your training in aggressive fighting helps your effort to break the door.");
		nStrength = nStrength + 3;
	}
	int nRoll = d20();
	int nFinal = nRoll + nStrength;
	if(nFinal >= nDC)
	{
		SendMessageToPC(oPC, "(Forcing the Door): *success* ("+IntToString(nRoll)+" + "+IntToString(nStrength)+" = "+IntToString(nFinal)+" vs. DC "+IntToString(nDC)+".)");
		SetLocked(OBJECT_SELF, FALSE);
		AssignCommand(OBJECT_SELF, ActionOpenDoor(OBJECT_SELF));
	}
	else
	{
		SendMessageToPC(oPC, "(Forcing the Door): *failure* ("+IntToString(nRoll)+" + "+IntToString(nStrength)+" = "+IntToString(nFinal)+" vs. DC "+IntToString(nDC)+".)");
	}
}