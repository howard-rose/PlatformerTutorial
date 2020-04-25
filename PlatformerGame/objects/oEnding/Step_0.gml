//Move player towards center

layer_x("TitleAssets", min(layer_get_x("TitleAssets")+1, (RES_W/2)-32))
//layer_x(TitleAssetsLayer, min(layer_get_x(TitleAssetsLayer)+1, (RES_W/2)-32))

//Progress text
letters += spd
text = string_copy(endtext[currentline], 1, floor(letters))

//Next line
if (letters >= length) and (keyboard_check_pressed(vk_anykey)) {
	if (currentline + 1 == array_length_1d(endtext)) {
		Transition(TransitionMode.Restart)	
	} else {
		currentline++
		letters = 0
		length = string_length(endtext[currentline])
	}
}