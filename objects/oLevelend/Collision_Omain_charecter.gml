/// @description Move to next room

with (Omain_charecter)
{
	if (hascontrol)
	{
		hascontrol = false;
		Transition(TRANS_MODE.GOTO,other.target);
	}
}
