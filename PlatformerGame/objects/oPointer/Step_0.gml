/// @desc Move up and down

//Get position
position += move
if (position >= range) move = -moveSpd
if (position <= -range) move = moveSpd

//Set position
y = ystart + floor(position)