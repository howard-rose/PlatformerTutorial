//Rotate gun according to mouse pointer
image_angle = point_direction(x, y, mouse_x, mouse_y)
image_yscale = ((image_angle > 90) and (image_angle < 270)) ? -1 : 1 //If gun is pointed to the left, reverse

firingDelay--
recoil = max(0, recoil-1)

//Shoot bullet
if (mouse_check_button(mb_left)) and (firingDelay < 0) {
	firingDelay = 5	
	recoil = 4
	
	ScreenShake(1, (1/6))
	
	//Shooting sound
	var snd = audio_play_sound(sndShoot, 3, false)
	audio_sound_pitch(snd, random_range(0.9, 1.1))
	
	with (instance_create_layer(x, y, "Bullets", oBullet)) {
		image_angle = other.image_angle + random_range(-3, 3) //Slightly randomized bullet spread
		speed = 25
		direction = image_angle
	}
}

//Set position of gun with recoil; in Begin Step so that gun position is lagging 1 frame behind player
x = oPlayer.x - lengthdir_x(recoil, image_angle)
y = oPlayer.y+10 - lengthdir_y(recoil, image_angle)