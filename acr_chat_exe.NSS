////////////////////////////////////////////////////////////////////////////////
//
//  System Name : Alfa Core Rules
//     Filename : acr_chat_script
//        Date  : 2007-11-30
//       Author : AcadiusLost
//
//    Var Prefix: ACR_CHAT_
//  Dependencies: NWNx4, xp_chat plugin
//
//  Description
//  hooks emotes and spoken words, to validate activity for RP XP caching
//   adapted code forom SIMTools fky_chat.nss
//
//  Revision History
//  date  author  remarks
//  2007/11/30  AcadiusLost   Inception
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Includes ////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
#include "acr_chat_i"


////////////////////////////////////////////////////////////////////////////////
// Constants ///////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

void main() {
    object oPC = OBJECT_SELF;
/////////////////////////Gather Message and Target Data/////////////////////////
    string sCache = GetLocalString(GetModule(), "NWNX!CHAT!SPACER");

	
    //SetLocalString(oPC, "NWNX!CHAT!TEXT", sCache); // Query for chattext
    //string sText = GetLocalString(oPC, "NWNX!CHAT!TEXT"); // Get chattext
    //int nChannel = StringToInt(GetStringLeft(sText, 2)); // Get channel
    //int nTarget = StringToInt(GetSubString(sText, 2, 10)); // Target ID - Return value of -1 is no target. IE, not a tell/privatemessage
    //sText = GetStringRight(sText, GetStringLength(sText) - 12);// Remove Target & Channel Info
    //if( nTarget != -1 )// Acquire possible target
    //{
    //    object oTarget = GetLocalObject(GetModule(), "SpeechList_" + IntToString(nTarget));
    //    string sLogMessageTarget = "->" + GetName(oTarget) + "(" + GetPCPlayerName(oTarget) + ")";
    //} 
	//string sType = GetSubString(sText, 0, 1);//this is the primary sorting string, the leftmost letter of the text
	//SendMessageToPC(oPC, "Test echo: "+sText);
	DeleteLocalString(oPC, "NWNX!CHAT!TEXT");
	SetLocalInt(oPC, _RPXP_ACTIVITY, TRUE);
}