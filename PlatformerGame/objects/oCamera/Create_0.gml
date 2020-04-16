/// @desc Set up camera

camera = view_camera[0]
follow = oPlayer
view_w_half = camera_get_view_width(camera) / 2
view_h_half = camera_get_view_height(camera) / 2
xTo = xstart
yTo = ystart

shakeLength = 0 //60
shakeMagnitude = 0
shakeRemain = 0
buff = 32 //Buffer for the room width and height; make sure it is always above shakeMagnitude to avoid seeing outside the room

layerMountains = layer_get_id("Mountains")
layerTrees = layer_get_id("Trees")