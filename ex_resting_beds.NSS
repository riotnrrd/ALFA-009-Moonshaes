// ex_resting_beds
void main(){
     object oRestingPlayer = GetLastUsedBy();
     SetLocalInt(oRestingPlayer, "NoRest", 0);
     AssignCommand(oRestingPlayer, ActionRest());
           }