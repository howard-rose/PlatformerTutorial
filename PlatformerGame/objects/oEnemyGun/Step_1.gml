x = owner.x
y = owner.y+10

image_xscale = abs(owner.image_xscale)
image_yscale = abs(owner.image_yscale)

if (instance_exists(oPlayer)) {
	if (oPlayer.x < x) {
		image_yscale = -image_yscale
	}
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 600) {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)	
		countdown--
		
		if (countdown <= 0) {
			countdown = countdownrate	
			
			if (!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)) {
				var snd = audio_play_sound(sndShoot, 3, false)
				audio_sound_pitch(snd, random_range(0.9, 1.1))
	
				with (instance_create_layer(x, y, "Bullets", oEnemyBullet)) {
					image_angle = other.image_angle + random_range(-3, 3) //Slightly randomized bullet spread
					spd = 10
					direction = image_angle
				}
			}
		}
	}
}
