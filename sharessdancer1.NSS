void main()
{

object oPC = GetLastPerceived();

if (!GetIsPC(oPC)) return;

if (!GetLastPerceptionSeen()) return;
object oTarget;
oTarget = OBJECT_SELF;

int nRandom = d3();
if (nRandom ==1)
{
ActionPlayAnimation(ANIMATION_LOOPING_DANCE01);
}

if (nRandom == 2)
{
ActionPlayAnimation(ANIMATION_LOOPING_DANCE02);
}

else if (nRandom== 3)
{
ActionPlayAnimation(ANIMATION_LOOPING_DANCE03);
}
}