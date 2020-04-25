TitleAssetsLayer = layer_get_id("TitleAssets")
gunSprite = layer_sprite_get_id("TitleAssets", "gGun")
//gunSprite = layer_sprite_get_id(TitleAssetsLayer, "gGun")

if (global.hasgun) and (global.kills > 0) {
	endtext[0] = "And on this day our hero had slain " + string(global.kills) + " people."
	if (global.kills == 1) endtext[0] = "And on this day our hero killed a guy for no reason."
	endtext[1] = "But some of those people had guns too, so..."
	endtext[2] = "He was probably saving the world, or something."
	endtext[3] = "Regardless, he was arrested two days later and spent the rest of his life in prison."
	endtext[4] = "The defense team tried to argue that the sexy recoil effects and hit flashes were to blame,\nbut to no avail."
	endtext[5] = "The park ranger would later state she was \"not angry, just disappointed.\""
	endtext[6] = "The end."
} else {
	layer_sprite_destroy(gunSprite)
	endtext[0] = "On this day our hero had a wonderful, serene walk through a national park\nand didn't even murder anyone."
	endtext[1] = "They reported a discarded firearm to the local authorities\nand were thanked profusely for assisting in an ongoing criminal investigation."
	endtext[2] = "And all it took was behavior that outside of a video game context\none would hope is completely normal."
	endtext[3] = "Who would have thought?"
	endtext[4] = "The end."
}

spd = 0.5
letters = 0
currentline = 0 
length = string_length(endtext[currentline])
text = ""