var width_half = width / 2

//Draw box
draw_set_color(c_black)
draw_set_alpha(0.5) //Transparency
draw_roundrect_ext(x-width_half-margin, y-height-(margin*2), x+width_half+margin, y, radiusx, radiusy, false)
draw_sprite(sMarker, 0, x, y)
draw_set_alpha(1)

//Draw text
DrawSetText(c_white, fSign, fa_center, fa_top)
draw_text(x, y-height-margin, text_current)
