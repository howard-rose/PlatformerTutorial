/// @func MenuOptionTrigger(menu_cursor)
/// @desc Called when an option is selected on the main menu
/// @arg menu_cursor Which option is currently being hovered on by the cursor

menu_x_target = gui_width + menu_x_offset
menu_committed = argument0
menu_control = false
		
ScreenShake(4, 0.5)		
		
audio_play_sound(sndDeath, 4, false)