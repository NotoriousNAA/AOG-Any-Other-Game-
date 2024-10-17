#region	//Get Player Input

if (hascontrol)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_left = 0
	key_right = 0
	key_jump = 0
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Owall)) && (key_jump)
{
  vsp = -9;

}
	
//Horizontal Collision
if (place_meeting(x+hsp,y,Owall))
{

   while(!place_meeting(x+sign(hsp),y,Owall))
   {
      x = x + sign(hsp);
   }
   hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,Owall))
{

   while(!place_meeting(x,y+sign(vsp),Owall))
   {
      y = y + sign(vsp);
   }
   vsp = 0;
}

y = y + vsp;

//Animatimion
if (!place_meeting(x,y+1,Owall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 0; else image_index = 1;	
}
else
{
	image_speed = 1;
	if  (hsp == 0)
	{
		sprite_index = sMain_Character_power_usage
	}
{
	sprite_index = sPlayer;
}
}

if key_left && !key_jump
{
	sprite_index = sPlayerR2
}
	
if key_right && !key_jump
{
	sprite_index = sPlayerR
}
if (mouse_check_button(mb_left)) 
{
	sprite_index = sMain_Character_power_usage;
}