/// @description Move to next room

with (oPlayer) {
	if (hascontrol) {
		hascontrol = false
		SlideTransition(TransitionMode.Goto, other.target)
	}
}
