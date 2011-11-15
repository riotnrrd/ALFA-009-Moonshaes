void main()
{
    SetLocked(OBJECT_SELF, TRUE);
    object oDoor = GetTransitionTarget(OBJECT_SELF);
    SetLocked(oDoor, TRUE);
}