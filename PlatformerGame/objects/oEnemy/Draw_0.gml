draw_self()

if (hitflash > 0) {
	hitflash--		
	shader_set(shWhite)
	draw_self()
	shader_reset()
}