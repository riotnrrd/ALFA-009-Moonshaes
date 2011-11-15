#include "alu_inc"
void main(){
      ////////////////////////////////////////////////////
	 // Have we been looted recently? If so Abort.    
     if(GetLocalInt(OBJECT_SELF, "LOOTED") == TRUE)return;

     int nInt = GetLocalInt(OBJECT_SELF, "TREASURE_NODE");
	 if(nInt == 0){
	 CreatePlaceableTreasure();
	              }
	 if(nInt == 1){
	 GenerateSpecificTreasure(1);
	              }
	 if(nInt == 2){
	 GenerateSpecificTreasure(2);
	              }
	 if(nInt == 3){
	 GenerateSpecificTreasure(3);
	              }
	 if(nInt == 4){
	 GenerateSpecificTreasure(4);
	              }
				  
		SetLocalInt(OBJECT_SELF, "LOOTED", TRUE);
		DelayCommand(300.0, SetLocalInt(OBJECT_SELF, "LOOTED", FALSE));				  
           }