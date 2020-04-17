vx = 0
vy = 0
grav = 0.5
done = false

image_speed = 0
image_index = 0

ScreenShake(10, 1.5)
audio_play_sound(sndDeath, 4, false)
game_set_speed(30, gamespeed_fps)

with(oCamera) follow = other.id
