/// @desc Progress text

letters += spd
text_current = string_copy(text, 1, floor(letters))

draw_set_font(fSign)
if (height == 0) height = string_height(text)
width = string_width(text_current)

//Destroy when done
if (letters >= length) and (keyboard_check_pressed(vk_anykey)) {
	instance_destroy()
	with (oCamera) follow = oPlayer
}