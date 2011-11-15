#include "core_persist"
void main()
{
object oPC = GetMaster(OBJECT_SELF);
object oStatue = GetItemPossessedBy(oPC, "ca_figurine02");

SetLocalInt(oStatue, "toad_created", 0);
int x = d100();

if(x<=50)
	{
		AssignCommand(oPC, ActionSpeakString("Your small companion is banished, but the statue is ok. Your companion will need to rest, but you should be able to resummon him after several hours.", TALKVOLUME_TALK));
	}

else if(x>50)
	{
		DestroyObject(oStatue, 0.0);
		AssignCommand(oPC, ActionSpeakString("The small figurine in your inventory shatters irrevocably into a thousand pieces.", TALKVOLUME_TALK));
	}
}