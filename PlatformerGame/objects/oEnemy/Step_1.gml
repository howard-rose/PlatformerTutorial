/// @desc Check if dead

if (hp <= 0) {
	with (instance_create_layer(x, y, layer, oEnemyDead)) {
		vx = lengthdir_x(3, other.hitFrom)
		vy = lengthdir_y(3, other.hitFrom)-2
		
		image_xscale = (sign(vx != 0)) ? other.size * sign(vx) : other.size
		image_yscale = other.size
		
		ScreenShake(6 * other.size, 0.5)
		var snd = audio_play_sound(sndDeath, 4, false)
		audio_sound_pitch(snd, 1/(other.size*0.5))
	}
	
	instance_destroy()
}
