/// @desc Size variables and mode setup

width = display_get_gui_width()	
height = display_get_gui_height()
height_half = height / 2

enum TransitionMode {
	Off, 
	Next,
	Goto,
	Restart,
	Intro	
}

mode = TransitionMode.Intro
percentmax = 1.1 //Default 1, rectangles will barely touch before moving away agian
transitionspd = 10
transitionspdmin = 0.005
percent = percentmax
target = room