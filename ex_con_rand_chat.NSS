void main(string sChatType, int nVariable){
     object oPC = GetPCSpeaker();
	 if(sChatType == "threat"){
	 	string sS1;
		string sS2;
		string sS3;
		string sS4;
		int nWhoSwitch = Random(2)+1;
		if(nWhoSwitch <= 1)sS1 = "You";
		if(nWhoSwitch >= 2)sS1 = "I ";

		if(nWhoSwitch <= 1){		
		 switch(Random(6)){
		 case 1: sS2 = " are dead!"; break;
		 case 2: sS2 = " will die here today!"; break;
		 case 3: sS2 = "r life is mine!"; break;
		 case 4: sS2= "'r neck will meet my blade!"; break;
		 case 5: sS2 = ""; sS4 ="DIE!"; break;
		 case 6: sS2 = "r ass is mine!"; break;

		                  }		
                           }
		 if(nWhoSwitch >= 2){
		 int WSRS = Random(2+1);
		 int WSR2 = Random(2);
		 switch(WSRS){
		 case 1: sS2 = " would run if I were you!"; break;
		 case 2: sS2 = " would'nt stick around"; break;

		 
		     if(WSRS == 2){
		 switch(Random(8)){
		 case 1: sS3 = ". Something bad might happen."; break;
		 case 2: sS3 = " if I were you."; break;
		 case 3: sS3 = "."; break;	
	            	 }			 
			              }
		                  }		 
		     		 }
	    AssignCommand(oPC, SpeakString(sS1+sS2+sS3+sS4));
	                              }	
								  
     if(sChatType == "insult"){
                         
                              }
     if(sChatType == "greeting"){
                         
                                }						 								  
								  }
/*								  
								  		 case 1: sS4 = " would run if I were you!"; break;
		 case 2: sS4 = "pathetic wench!"; break;
		 case 3: sS4 = "dankish malt-worm!"; break;
		 case 4: sS4 = "moron!"; break;
		 case 5: sS4 = "breast feeder!"; break;
		 case 6: sS4 = "Kobold lover!"; break;
		 case 7: sS4 = "weak shambling mound!"; break;
		 case 8: sS4 = "pile of horse snott!"; break;
		                  }	