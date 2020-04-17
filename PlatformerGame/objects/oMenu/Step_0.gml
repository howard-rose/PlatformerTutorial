/// @desc Control menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed

//Keyboard controls
if (menu_control) {
	if (keyboard_check_pressed(ord("W"))) {
		menu_cursor++
		if (menu_cursor >= menu_items) menu_cursor = 0
	} 
	if (keyboard_check_pressed(ord("S"))) {
		menu_cursor--
		if (menu_cursor < 0) menu_cursor = menu_items - 1
	}
	if (keyboard_check_pressed(vk_enter)) {
		menu_x_target = gui_width + menu_x_offset
		menu_committed = menu_cursor
		menu_control = false
		
		ScreenShake(4, 0.5)		
	}
}

if (menu_committed != -1) and (menu_x > gui_width + menu_x_offset - 50) {
	switch (menu_committed) {
		default:
		case 2:
			Transition(TransitionMode.Next)
			break;
		case 1:
			Transition(TransitionMode.Next)
			break;
		case 0:
			game_end()
			break;
	}
}