/// @description Progress the transition
if (mode != TransitionMode.Off) {
	//percent = (mode == TransitionMode.Intro) ? max(0, percent-max((percent/10), 0.005)) : min(1, percent+max(((1-percent)/10), 0.005))
	if (mode == TransitionMode.Intro) {
		percent = max(0, percent-max((percent/10), 0.005))
	} else {
		percent = min(percentmax, percent+max(((percentmax-percent)/10), 0.005))
	}
	
	if (percent == percentmax) or (percent == 0) {
		switch (mode) {
			case TransitionMode.Intro:
				mode = TransitionMode.Off
				break;
			case TransitionMode.Next:
				mode = TransitionMode.Intro
				room_goto_next()	
				break;
			case TransitionMode.Goto:
				mode = TransitionMode.Intro
				room_goto(target)
				break;
			case TransitionMode.Restart:
				game_restart()
				break;
		}
	}
}
