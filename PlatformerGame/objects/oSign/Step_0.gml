/// @desc Generate pointer

if (instance_exists(oPlayer)) and (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)) and (!instance_exists(oText)) {
	if (!instance_exists(oPointer))
		instance_create_layer(x, y-36, layer, oPointer)
} else {
	if (instance_exists(oPointer)) {
		with (oPointer) instance_destroy()	
	}
}