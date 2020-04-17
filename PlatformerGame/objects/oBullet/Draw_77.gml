if (place_meeting(x, y, pShootable)) {
	with (instance_place(x, y, pShootable)) {
		hp--
		hitflash = 3
		hitFrom = other.direction
	}
	instance_destroy()
}



if (place_meeting(x, y, oWall)) instance_destroy()
