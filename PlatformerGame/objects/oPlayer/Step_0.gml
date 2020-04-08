//Keyboard input
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyJump = keyboard_check_pressed(ord("W"))

//Calculate movement
//Horizontal movement
var xmove = keyRight - keyLeft
vx = xmove * walkSpd

//Vertical movement (Jump)
vy += grav
if place_meeting(x, y+1, oWall) and keyJump {
	vy = jumpSpd
}

//Collisions	
//Horizontal Collision
if place_meeting(x+vx, y, oWall) {
	while !place_meeting(x+sign(vx), y, oWall) {
		x += sign(vx)	
	}
	vx = 0
}
x += vx

//Vertical Collision
if place_meeting(x, y+vy, oWall) {
	while !place_meeting(x, y+sign(vy), oWall) {
		y += sign(vy)	
	}
	vy = 0
}
y += vy