const string SLOT_JACKPOT = "gam_slot_pot";
const string DB_GAMBLE    = "gamble";
const string SLOT_NUM_1   = "gam_slot_num1";
const string SLOT_NUM_2   = "gam_slot_num2";
const string SLOT_NUM_3   = "gam_slot_num3";

void SlotsDisplayNumberAndEffects(object oPlayer, string sNumber){
     SpeakString(sNumber);
     PlaySound("pl_grindstne_idle02");
                                                            }

void DisplayWinningVSRolledNumbers(object oMessageTo, string nFirstNumber, string nSecondNumber, string nThirdNumber, string sWinningNumb1,string sWinningNumb2, string sWinningNumb3, int Winners){
     SendMessageToPC(oMessageTo, "Winning Numbers: "+sWinningNumb1+" "+sWinningNumb2+" "+sWinningNumb3);
     SendMessageToPC(oMessageTo, "Your Numbers: "+nFirstNumber+" "+nSecondNumber+" "+nThirdNumber);
     SendMessageToPC(oMessageTo, "You matched "+IntToString(Winners)+" numbers!");
                                    }                                                             
void SlotsUpdateJackPot(int nNewAmmount){
     SetCampaignInt(DB_GAMBLE, SLOT_JACKPOT, nNewAmmount);
     SetLocalInt(GetModule(), SLOT_JACKPOT, nNewAmmount);
                         }                                                                                                                        
int SlotsGetNumberOfWins(object oPlayer, string nFirstNumber, string nSecondNumber, string nThirdNumber){
         int NumberWins = 0;
         string sWinningNumb1 = IntToString(d20(2)-1);
         string sWinningNumb2 = IntToString(d20(2)-1);
         string sWinningNumb3 = IntToString(d20(2)-1);
         
         if(nFirstNumber == sWinningNumb1 || 
            nFirstNumber == sWinningNumb2 || 
            nFirstNumber == sWinningNumb3){
            NumberWins = NumberWins+1;
                                          }
         if(nSecondNumber == sWinningNumb1 || 
            nSecondNumber == sWinningNumb2 || 
            nSecondNumber == sWinningNumb3){
            NumberWins = NumberWins+1;
                                          }
         if(nThirdNumber == sWinningNumb1 || 
            nThirdNumber == sWinningNumb2 || 
            nThirdNumber == sWinningNumb3){
            NumberWins = NumberWins+1;
                                          } 
                                            
           DelayCommand(8.0, 
           DisplayWinningVSRolledNumbers(oPlayer, nFirstNumber,nSecondNumber,nThirdNumber,sWinningNumb1,sWinningNumb2,sWinningNumb3, NumberWins));                               
           
            return NumberWins;                             
                          }      
                
void SlotsDealWinnings(int NumberOf, object oWinner){
     SetCutsceneMode(oWinner, FALSE);
     if(NumberOf == 0)return;
     int nAmmount = 0;
     int nPot = GetLocalInt(GetModule(), SLOT_JACKPOT);
     
     if(NumberOf == 1){
        nAmmount = 2;
        PlaySound("it_coins");
        SendMessageToPC(oWinner, "You win 2 Gold!");
                      }
     else{
         
         if(NumberOf == 2){
         SendMessageToPC(oWinner, "You win 1/4 of the pot!");
         nAmmount = 5;
         PlaySound("it_coins");
         DelayCommand(3.0, PlaySound("it_coins"));
         DelayCommand(6.0, PlaySound("it_coins"));
                          }
         if(NumberOf == 3){
         nAmmount = 30;
         SpeakString("JACKPOT!");
         DelayCommand(3.0, SpeakString("JACKPOT!"));
         DelayCommand(6.0, SpeakString("JACKPOT!"));
         PlaySound("mus_sbat_combatwin");
         DelayCommand(3.0, PlaySound("it_coins"));
         DelayCommand(6.0, PlaySound("it_coins"));
                          }                 
     
      
         }
     SlotsUpdateJackPot(nPot-nAmmount);                
     GiveGoldToCreature(oWinner, nAmmount); 
     
                                    }                                    
                                                                               