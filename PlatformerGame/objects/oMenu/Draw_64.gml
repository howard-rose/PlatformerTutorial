/// @desc Draw menu

draw_set_font(fMenu)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)

for (var i=0; i < menu_items; i++) {
	var offset = 2
	var txt = menu[i]
	var color = c_gray
	
	if (menu_cursor == i) {
		txt = string_insert("> ", txt, 0) //TODO: check if txt = "> " + txt works as well
		var color = c_white
	} 
	
	var xx = menu_x
	var yy = menu_y - (menu_itemheight * i * 1.5)
	
	draw_set_color(c_black) //For the outline of the text	
	//TODO: find more efficient way?
	draw_text(xx+offset, yy, txt)
	draw_text(xx-offset, yy, txt)
	draw_text(xx, yy+offset, txt)
	draw_text(xx, yy-offset	, txt)
	
	draw_set_color(color)
	draw_text(xx, yy, txt)
}