// Created by Riotnrrd for ALFA 8/2012
// Borrows heavily from Zelknolf's 'zspawn' system

#include "acr_creature_i"

void main()
{
    ACR_CreatureOnSpawnIn();
	object oCreature = OBJECT_SELF;
	
//	FeatAdd(oCreature, 2179, FALSE); // Shadow touch attack

	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectDamageReduction(50, DAMAGE_POWER_PLUS_ONE, 0, DR_TYPE_MAGICBONUS)), oCreature);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectConcealment(50)), oCreature);
	int nDeflection = GetAbilityModifier(ABILITY_CHARISMA, oCreature);
	if(nDeflection < 1) nDeflection = 1;
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectACIncrease(nDeflection, AC_DEFLECTION_BONUS)), oCreature);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectSkillIncrease(SKILL_MOVE_SILENTLY, 50)), oCreature);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectImmunity(IMMUNITY_TYPE_ENTANGLE)), oCreature);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, SupernaturalEffect(EffectImmunity(IMMUNITY_TYPE_KNOCKDOWN)), oCreature);
	FeatAdd(oCreature, FEAT_WEAPON_FINESSE, FALSE, FALSE, FALSE);
	
	SendMessageToAllDMs("spawned\n");

}