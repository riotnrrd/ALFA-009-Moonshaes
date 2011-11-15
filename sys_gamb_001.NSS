#include "sys_gamble_inc"
void main(){
     object oPlayer = GetLastUsedBy();
     if(GetGold(oPlayer)<1)return;
     
     TakeGoldFromCreature(1, oPlayer, TRUE);
     SlotsUpdateJackPot(GetLocalInt(GetModule(), SLOT_JACKPOT)+1);
     //SetCampaignInt(DB_GAMBLE, SLOT_JACKPOT, GetLocalInt(GetModule(), SLOT_JACKPOT)+1);
     ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE);
     DelayCommand(2.0, ActionPlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
     SetCutsceneMode(oPlayer, TRUE);
     
     string nFirstNumber  = IntToString(d20(2)-1),  
            nSecondNumber = IntToString(d20(2)-1),
            nThirdNumber  = IntToString(d20(2)-1);
         
         DelayCommand(2.0, SlotsDisplayNumberAndEffects(oPlayer, nFirstNumber));
         DelayCommand(4.0, SlotsDisplayNumberAndEffects(oPlayer, nSecondNumber));
         DelayCommand(6.0, SlotsDisplayNumberAndEffects(oPlayer, nThirdNumber));
         

         int nWins = SlotsGetNumberOfWins(oPlayer, nFirstNumber, nSecondNumber, nThirdNumber);
         
         
         
         DelayCommand(10.0, SlotsDealWinnings(nWins, oPlayer));
                                                                                                                             
           }
           
/*
This should go on mod load.
         SetLocalInt(GetModule(), SLOT_JACKPOT, GetCampaignInt(DB_GAMBLE, SLOT_JACKPOT));           