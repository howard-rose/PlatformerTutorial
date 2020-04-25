with (oGun) instance_destroy()

instance_change(oPlayerDead, true)

direction = point_direction(other.x, other.y, x, y)
vx = lengthdir_x(6, direction)
vy = lengthdir_y(4, direction) - 2

if (vx != 0) image_xscale =	sign(vx)

global.kills -= global.killsthisroom