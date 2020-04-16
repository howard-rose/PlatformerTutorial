/// @desc Move to next room

with (oPlayer) {
	if (hascontrol) {
		hascontrol = false
		Transition(TransitionMode.Goto, other.target)
	}
}