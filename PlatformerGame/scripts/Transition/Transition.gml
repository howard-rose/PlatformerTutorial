/// @func Transition(mode, target)
/// @desc Modifies the current transition mode and switches room if in goto mode
/// @arg mode Sets transition mode between next, restart, and goto
/// @arg target Sets target room in goto mode.

with (oTransition) {
	mode = argument[0]
	
	if (argument_count > 1) target = argument[1]
}

