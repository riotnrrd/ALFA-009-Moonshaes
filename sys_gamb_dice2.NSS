void main(){
object oObject = GetFirstItemInInventory();
while(GetIsObjectValid(oObject)){
DestroyObject(oObject);
oObject = GetNextItemInInventory();
       }
           }