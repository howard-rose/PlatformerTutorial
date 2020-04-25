event_inherited()

vy = 0
grav = 0.5
walkSpd = 4
vx = walkSpd
jumpSpd = -10

hitFrom = 0
size = 1

afraidOfHeights = true
grounded = false

if (hasWeapon) {
	mygun = instance_create_layer(x, y, "Gun", oEnemyGun)
	with (mygun) {
		owner = other.id	
	}
} else {
	mygun = noone	
}