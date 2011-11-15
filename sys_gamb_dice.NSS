void DiceResults(object oPlayer, int nBet, int nResult);
int RollSilentSpotCheck(object oPlayer);

void main(){
     object oPlayer = GetLastDisturbed();
     object oButton = GetInventoryDisturbItem();
     object oNewButton;
     int nType = GetInventoryDisturbType();
     string sName = GetName(oButton);
     int nGold = GetGold(oPlayer);
     int nPlay = FALSE;
     int nBet;
     
     
     if(nType == INVENTORY_DISTURB_TYPE_ADDED)return;
     
     if(sName == "Bet 1" && nGold >=1){
        nBet = 1;
        nPlay = TRUE;
        oNewButton = CreateItemOnObject("ex_button");
        DestroyObject(oButton);
        SetFirstName(oNewButton, "Bet 1");
        TakeGoldFromCreature(1, oPlayer, TRUE);
                         }
     if(sName == "Bet 5"){
     nBet = 5;
        nPlay = TRUE;
        oNewButton = CreateItemOnObject("ex_button");
        DestroyObject(oButton);
        SetFirstName(oNewButton, "Bet 5");     
                         }
     if(sName == "Bet 10"){
     nBet = 10;
        nPlay = TRUE;
        oNewButton = CreateItemOnObject("ex_button");
        DestroyObject(oButton);
        SetFirstName(oNewButton, "Bet 10");     
                          }
                          
     if(nPlay == TRUE){
        int nTableCheats = d10();
        SetCutsceneMode(oPlayer, TRUE);
        int DealerRoll = d6(2);
        int PlayerRoll = d6(2);
        
        if(nTableCheats <=5 && DealerRoll <= PlayerRoll)DealerRoll = PlayerRoll+d4();
        if(DealerRoll > 12)DealerRoll = 12;
        
        DelayCommand(2.0, SpeakString("Table: "+IntToString(DealerRoll)));
        DelayCommand(4.0, SpeakString("Player: "+IntToString(PlayerRoll)));
        if(PlayerRoll > DealerRoll){
           DelayCommand(6.0, DiceResults(oPlayer,nBet, 1));
                                  } 
        if(PlayerRoll == DealerRoll){
           DelayCommand(6.0, DiceResults(oPlayer,nBet, 2));
                                  } 
        if(PlayerRoll < DealerRoll){
           DelayCommand(6.0, DiceResults(oPlayer,nBet, 0));
                                  } 
        if(nTableCheats <=5 && PlayerRoll <= DealerRoll && RollSilentSpotCheck(oPlayer) == TRUE){
           SendMessageToPC(oPlayer, "You caught the table cheating. It is treated like a win.");
           GiveGoldToCreature(oPlayer, nBet*2);                                                                                     }                        
                      }                     
                  
           }
           
void DiceResults(object oPlayer, int nBet, int nResult){
     // 0 == loose 1 == win 2 == tie
    switch(nResult){
    case 0: SpeakString("You loose");break;
    case 1:GiveGoldToCreature(oPlayer, nBet*2); 
           SpeakString("WINNER!");break;
    case 2:GiveGoldToCreature(oPlayer, nBet); 
           SpeakString("TIED!");break;
            }
            SetCutsceneMode(oPlayer, FALSE);         
                          }           

int RollSilentSpotCheck(object oPlayer){
    int nPass = FALSE;
    int skill = GetSkillRank(SKILL_SPOT, oPlayer);
    int nDice = d20();
    int nDC = 20;
    skill = skill+nDice;
    if(skill >= nDC)nPass = TRUE;
    return nPass;
                                       }                                                    