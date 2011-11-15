#include "ginc_misc"
#include "ginc_math"
#include "ginc_wp"

void PlayCustomLoopingAnimation(object oObject, string sAnimationName)
{
   PlayCustomAnimation(oObject, sAnimationName, 1);
}

void PlayCustomOneShotAnimation(object oObject, string sAnimationName)
{
   PlayCustomAnimation(oObject, sAnimationName, 0);
}

void main()
{
   if (GetAILevel(OBJECT_SELF) == AI_LEVEL_VERY_LOW)
   {
      return;
   }

   object oActor = OBJECT_SELF;
   
   if (GetLocalInt(oActor, "SetDefaultAnimation") == 0)
   {
      AssignCommand(oActor, PlayCustomLoopingAnimation(oActor, "sitidle"));
      SetLocalInt(oActor, "SetDefaultAnimation", 1);
   }
   
   int nRandom = RandomIntBetween(1, 9);
   
   switch(nRandom)
   {
      case 1:
         PlayCustomLoopingAnimation(oActor, "sitfidget");
         break;
      case 2:
         PlayCustomLoopingAnimation(oActor, "sittalk01");
         break;
      case 3:
         PlayCustomLoopingAnimation(oActor, "sittalk02");
         break;
      case 4:
         PlayCustomLoopingAnimation(oActor, "sitfidget");
         break;
      case 5:
         PlayCustomLoopingAnimation(oActor, "sittalk01");
         break;
      case 6:
	  PlayCustomLoopingAnimation(oActor, 
      case 7:
      case 8:
         break;
   }
} 