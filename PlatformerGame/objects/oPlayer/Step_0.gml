//Keyboard input
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left)
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right)
keyJump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)

//Calculate movement
//Horizontal movement
var xmove = keyRight - keyLeft
vx = xmove * walkSpd

//Vertical movement (Jump)
var onFloor = place_meeting(x, y+1, oWall)
vy += grav

if (onFloor and keyJump) {
	vy = jumpSpd
}

//Collisions	
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

//Animation
if (onFloor) {
	image_speed = 1
	sprite_index = (xmove == 0) ? sPlayer : sPlayerRun
} else { 
	image_speed = 0
	sprite_index = sPlayerAir
	image_index = (vy > 0) ? 1 : 0
} 

if (xmove != 0) image_xscale = xmove