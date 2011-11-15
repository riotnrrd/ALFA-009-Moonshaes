void PlayExodusAnimation(int Animation, int nLooping = TRUE, object oTarget = OBJECT_SELF);

void main(){
     string sEvent = GetLocalString(OBJECT_SELF, "Event");

     if(sEvent == "music"){
        PlayExodusAnimation(ANIMATION_LOOPING_FLUTEPLAY);
                          }
           }
           
void PlayExodusAnimation(int Animation, int nLooping = TRUE, object oTarget = OBJECT_SELF){
     if(GetIsObjectValid(oTarget) ==  FALSE)return;
     PlayAnimation(Animation, 1.0, 6.0);
     if(nLooping == TRUE)DelayCommand(6.01, PlayExodusAnimation(Animation));
                                                                                          }           