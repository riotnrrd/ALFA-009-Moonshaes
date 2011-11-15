#include "ex_menu_inc"
// pick spot listen lore search open
int d30(int nNumDice=1){
        int nInt = 30*nNumDice+1;
		int nResult = Random(nInt);
		
        return nResult;
                       }
void main(int Sides, int Number, string Special){
     object oPC = GetPCSpeaker();
	 	 
      string sName = GetFirstName(oPC);
     int nDice;     
	 if(Number == 0) Number = 1;
     if(Sides == 4) nDice = d4(Number);
     if(Sides == 6) nDice = d6(Number);
     if(Sides == 8) nDice = d8(Number);
     if(Sides == 10) nDice = d10(Number);
     if(Sides == 12) nDice = d12(Number);
     if(Sides == 20) nDice = d20(Number);
     if(Sides == 30) nDice = d30(Number);
     if(Sides == 100) nDice = d100(Number);

     if(Special !=""){
        int nResult;
		string sString;
		if(GetIsDM(oPC))oPC = GetLocalObject(oPC, "WIGGET_TARGET");
        if(Special == "pick"){
           int nSkill = GetSkillRank(SKILL_SLEIGHT_OF_HAND, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "PickPockets";
                             }
        if(Special == "spot"){
           int nSkill = GetSkillRank(SKILL_SPOT, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Spot";
                             }
        if(Special == "listen"){
           int nSkill = GetSkillRank(SKILL_LISTEN, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Listen";
                             }
        if(Special == "lore"){
           int nSkill = GetSkillRank(SKILL_LORE, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Lore";
                             }
        if(Special == "search"){
           int nSkill = GetSkillRank(SKILL_SEARCH, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Search";
                             }
        if(Special == "open"){
           int nSkill = GetSkillRank(SKILL_OPEN_LOCK, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Open Locks";
                             }
        if(Special == "str"){
           int nSkill = GetAbilityModifier(ABILITY_STRENGTH, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Strength Check";
                             }
        if(Special == "dex"){
           int nSkill = GetAbilityModifier(ABILITY_DEXTERITY, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Dexterity check";
                             }
        if(Special == "con"){
           int nSkill = GetAbilityModifier(ABILITY_CONSTITUTION, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Constitution check";
                             }
        if(Special == "int"){
           int nSkill = GetAbilityModifier(ABILITY_INTELLIGENCE, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Inteligence check";
                             }
        if(Special == "wis"){
           int nSkill = GetAbilityModifier(ABILITY_WISDOM, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Wisdom check";
                             }
        if(Special == "cha"){
           int nSkill = GetAbilityModifier(ABILITY_CHARISMA, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Charisma check";
                             }
        if(Special == "fort"){
           int nSkill = GetAbilityModifier(ABILITY_CONSTITUTION, oPC);
           int nRoll = d20();
               nResult = nSkill+nRoll;
			   sString = "Charisma check";
                             }							 
					 
int nInt = GetLocalInt(oPC, "broadcast");
if(GetIsPC(oPC))SendMessageToPC(oPC, sString+" Results: "+IntToString(nResult));
if(nInt == 1)SpeakString(sString+" Results: "+IntToString(nResult), TALKVOLUME_SHOUT);	
if(nInt == 2)SpeakString(sString+" Results: "+IntToString(nResult), TALKVOLUME_TALK);				 

if(!GetIsDM(oPC))SendMessageToAllDMs(sName+"'s "+sString+" Results: "+IntToString(nResult));
return;					 
			     	}	 

string sSides = IntToString(Sides);
string sNumber= IntToString(Number);
string sDice= IntToString(nDice);


SendMessageToPC(oPC, sNumber+"d"+sSides+" Results: "+sDice);
SendMessageToAllDMs(sName+"'s "+sNumber+"d"+sSides+" Results: "+sDice);
                                                }