/*
	nDB_Local = 1 = DB 2 = Local
  Alucelestria
  this code is in a beta state and should not be shared.	
*/


int StartingConditional(int nDB_Local, string sVariable, int nValue,  string sObject, string sTable = "PC", string sDB = "PC"){
     
	 object oObject;
	 if(sObject == "self") oObject = GetPCSpeaker();
	 if(sObject == "OBJECT_SELF") oObject = OBJECT_SELF;
	 if(sObject == "area") oObject = GetArea(GetPCSpeaker());
	 
	 if(nDB_Local == 1){
	    int nDBInt = GetCampaignInt(sDB, sVariable,oObject);
	    if(nDBInt == nValue) return TRUE;
	                   }
	 if(nDB_Local == 2){				   
	    int nLocal = GetLocalInt(oObject, sVariable);
	 	 if(nLocal == nValue) return TRUE;
	                   }
					   return FALSE;
}