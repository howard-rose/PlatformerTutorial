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
		MenuOptionTrigger(menu_cursor)
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0)
	if (mouse_y_gui < menu_y) and (mouse_y_gui > menu_top) {
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5)	
		
		if (mouse_check_button_pressed(mb_left)) {
			MenuOptionTrigger(menu_cursor)
		}
	}
}

//Menu option selected
if (menu_committed != -1) and (menu_x > gui_width + menu_x_offset - 50) {
	switch (menu_committed) {
		default:
		case 2: //New Game
			Transition(TransitionMode.Next)
			break;
		case 1: //Continue
			if (!file_exists(SAVEFILE)) {
				Transition(TransitionMode.Next)
			} else {
				var file = file_text_open_read(SAVEFILE)
				var target = file_text_read_real(file)
				global.kills = file_text_read_real(file)
				global.hasgun = file_text_read_real(file)
				file_text_close(file)
				Transition(TransitionMode.Goto, target)
			}
			break;
		case 0: //Quit
			game_end()
			break;
	}
}