/// @func ScreenShake(magnitude, seconds)
/// @desc Shakes screen by a given magnitude and time
/// @arg magnitude Strength of the shake
/// @arg seconds Length of the shake 
	
with (oCamera) {
	if (argument0 > shakeRemain) {
		shakeMagnitude = argument0
		shakeRemain = argument0	
		shakeLength = argument1 * game_get_speed(gamespeed_fps)
	}	
}