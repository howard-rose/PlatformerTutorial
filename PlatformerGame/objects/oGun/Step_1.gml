x = oPlayer.x
y = oPlayer.y+10

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay--
recoil = max(0, recoil-1)

//Shoot bullet
if (mouse_check_button(mb_left)) and (firingDelay < 0) {
	firingDelay = 5	
	recoil = 4
	
	with (instance_create_layer(x, y, "Bullets", oBullet)) {
		speed = 25
		direction = other.image_angle + random_range(-3, 3)
		image_angle = direction
	}
}

x -= lengthdir_x(recoil, image_angle)
y -= lengthdir_y(recoil, image_angle)

image_yscale = ((image_angle > 90) and (image_angle < 270)) ? -1 : 1