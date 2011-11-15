void main(string sEmote){
     object oPC = GetPCSpeaker();
	 
	 if(sEmote == "sit on ground"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_SIT_CROSS, 1.0, 60.0));
	                              }
	 if(sEmote == "lay"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 1.0, 60.0));
	                              }
	 if(sEmote == "dance"){
	    switch (Random(3)){
		case 0:AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE01));break;
		case 1:AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE01));break;
		case 2:AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE02));break;
		case 3:AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE03));break;
		                   }
	                              }
	 if(sEmote == "threat"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT));
		
	                              }
	 if(sEmote == "kneel"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_KNEELIDLE,1.0,10.0));
	                              }
	 if(sEmote == "freak"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_SPASM,1.0,10.0));
	                              }
	 if(sEmote == "pray"){
	    AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_WORSHIP,1.0, 10.0));
	                              }
						  
								  
                        }