
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,Owall))
{

   while(!place_meeting(x+sign(hsp),y,Owall))
   {
      x = x + sign(hsp);
   }
   hsp = -hsp;
   
}
x = x + hsp;
if (-hsp)
{
	sprite_index = sEnemy_mirrored
}	
else
{
	sprite_index = sEnemy
}
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
	sprite_index = sPlayer;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 0; else image_index = 1;	
}
else
{
	image_speed = 1;
}
	if  (hsp = -1)
	{
		sprite_index = sEnemy_mirrored;
	}

