/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart, and goto.
/// @arg Target set target room when using the goto mode.

with (oTrasition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1]
}