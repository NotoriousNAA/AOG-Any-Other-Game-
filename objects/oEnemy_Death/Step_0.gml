if (done == 0)
{
	
vsp = vsp + grv;

//Horizontal Collision
if (place_meeting(x+hsp,y,Owall))
{

   while(!place_meeting(x+sign(hsp),y,Owall))
   {
      x = x + hsp;
   }
   hsp = -hsp;
   
}

//Vertical Collision
if (place_meeting(x,y+vsp,Owall))
{

   while(!place_meeting(x,y+sign(vsp),Owall))
   {
      y = y + sign(vsp);
	   image_index = 1
   }
   vsp = 0;
}

y = y + vsp;
}