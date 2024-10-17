x = Omain_charecter.x;
y = Omain_charecter.y-7;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	Recoil = 4;
	image_index = sMain_Character_power_usage
	firingdelay = 10;
	
	
	Screen_shake(2,10)
	
	
	
with (instance_create_layer(x,y,"power_bullets", oPower_Bullet))
	{
		speed = 50;
		direction = other.image_angle + random_range (5,-5)
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	
}
else
{
	image_yscale = 1;
}