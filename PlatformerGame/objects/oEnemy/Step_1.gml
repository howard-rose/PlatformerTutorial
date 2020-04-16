if (hp <= 0) {
	with (instance_create_layer(x, y, layer, oEnemyDead)) {
		vx = lengthdir_x(3, other.hitFrom)
		vy = lengthdir_y(3, other.hitFrom)-2
		if (sign(vx) != 0) image_xscale = sign(vx)
	}
	
	instance_destroy()
}
