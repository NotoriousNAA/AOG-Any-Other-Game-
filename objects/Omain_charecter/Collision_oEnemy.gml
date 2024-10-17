/// @desc Die
with (oPower) instance_destroy();
instance_change(oDeath,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(7,direction);
if (sign(hsp) != 0) image_xscale = 1
image_yscale = 1