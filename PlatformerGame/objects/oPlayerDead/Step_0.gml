if (!done) {
	vy += grav

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
		if (vy > 0) {
			done = true
			image_index = 1
			alarm[0] = 60 //60 frame countdown?
		}
		
		while (!place_meeting(x, y+sign(vy), oWall)) {
			y += sign(vy)	
		}
		vy = 0
	}
	y += vy
}