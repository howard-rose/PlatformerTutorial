#region //Player input
if (hascontrol) {
	keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left)
	keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right)
	keyJump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
} else {
	keyLeft = 0
	keyRight = 0
	keyJump = 0
}
#endregion

#region //Calculate movement
//Horizontal movement
var xmove = keyRight - keyLeft
vx = (xmove * walkSpd) + gunkickx
gunkickx = 0

//Vertical movement (Jump)
var onFloor = place_meeting(x, y+1, oWall)
vy += grav + gunkicky
gunkicky = 0

canjump--
if (canjump > 0) and (keyJump) {
	vy = jumpSpd
	canjump = 0
}
#endregion

#region //Collisions	
//Horizontal collision
if (place_meeting(x+vx, y, oWall)) {
	while (!place_meeting(x+sign(vx), y, oWall)) {
		x += sign(vx)	
	}
	vx = 0
}
x += vx

//Vertical collision
if (place_meeting(x, y+vy, oWall)) {
	while (!place_meeting(x, y+sign(vy), oWall)) {
		y += sign(vy)	
	}
	vy = 0
}
y += vy
#endregion

#region//Animation
var aimside = sign(mouse_x - x)
if (aimside != 0) image_xscale = aimside

if (onFloor) {
	//Landing sound
	if (sprite_index == sPlayerAir) {
		var snd = audio_play_sound(sndLanding, 2, false)
		audio_sound_pitch(snd, choose(0.8, 1, 1.2)) //Slightly randomize pitch
		
		repeat(5) {
			with (instance_create_layer(x, bbox_bottom, layerBullets, oDust)) {
				vy = 0
			}
		}
	}
	
	canjump = jumpBufferMax
	
	image_speed = 1
	
	if (vx == 0) {
		sprite_index = sPlayer
	} else if (aimside != sign(vx)) {
		sprite_index = sPlayerRunBack
	} else {
		sprite_index = sPlayerRun	
	}
	
	//sprite_index = (xmove == 0) ? sPlayer : sPlayerRun
} else { 
	image_speed = 0
	sprite_index = sPlayerAir
	image_index = (vy > 0) ? 1 : 0
} 

//if (xmove != 0) image_xscale = xmove
#endregion