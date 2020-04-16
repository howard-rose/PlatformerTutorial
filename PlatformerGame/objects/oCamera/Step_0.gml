/// @desc Update camera

//Update destination
if (instance_exists(follow)) {
	xTo = follow.x
	yTo = follow.y
}

//Update object position
x += (xTo - x) / 25
y += (yTo - y) / 25
	
//Keep camera center inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff)
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff)

//Screen shake
x += random_range(-shakeRemain, shakeRemain)
y += random_range(-shakeRemain, shakeRemain)
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude))

//Update camera view
camera_set_view_pos(camera, x-view_w_half, y-view_h_half)