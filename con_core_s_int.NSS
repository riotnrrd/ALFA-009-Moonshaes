// nDB_Local 1 = DB 2 = Local 3 = Both
// sObject self or area
//  Alucelestria
//  this code is in a beta state and should not be shared.

void main(int nDB_Local, string sVariable, int nValue, string sObject, string sTable = "PC", string sDB = "PC"){
	 object oObject;
	 if(sObject == "self") oObject = GetPCSpeaker();
	 if(sObject == "area") oObject = GetArea(GetPCSpeaker());

	 if(nDB_Local == 1 || nDB_Local == 3){	 
	 SetCampaignInt(sDB, sVariable,nValue,oObject);
	 
	                                     }
	 if(nDB_Local == 2 || nDB_Local == 3){	 
	 
	 SetLocalInt(oObject, sVariable, nValue);
	                                     }									 
										 
                                                                                                   }