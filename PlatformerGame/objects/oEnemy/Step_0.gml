#region //Vertical movement
var onFloor = place_meeting(x, y+1, oWall)
vy += grav
#endregion

#region //Collisions	
//Horizontal collision
if (place_meeting(x+vx, y, oWall)) {
	while (!place_meeting(x+sign(vx), y, oWall)) {
		x += sign(vx)	
	}
	vx = -vx
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

#region //Animation
if (onFloor) {
	image_speed = 1
	sprite_index = (vx == 0) ? sEnemy : sEnemyRun
} else { 
	image_speed = 0
	sprite_index = sEnemyAir
	image_index = (vy > 0) ? 1 : 0
} 

image_xscale = (sign(vx != 0)) ? size * sign(vx) : size
image_yscale = size
#endregion