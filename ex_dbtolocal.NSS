
void main(string sDatabase, string sVariable, string sObject = "self"){
     if(sDatabase == "") sDatabase = "PC";
	 object oObject;
	 if(sObject == "self") oObject = GetPCSpeaker();
	 if(sObject == "area") oObject = GetArea(GetPCSpeaker());
     int nDBInt = GetCampaignInt(sDatabase, sVariable,oObject);
	 SetLocalInt(oObject, sVariable, nDBInt);

                           }