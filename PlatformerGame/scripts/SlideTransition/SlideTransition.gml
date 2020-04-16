/// @function SlideTransition(mode, target)
/// @arg mode Sets transition mode between next, restart, and goto
/// @arg target Sets target room in goto mode.

with (oTransition) {
	mode = argument[0]
	
	if (argument_count > 1) target = argument[1]
}


