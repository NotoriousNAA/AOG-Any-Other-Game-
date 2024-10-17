//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Screen Shake
x += random_range (-shake_remain,shake_remain);
y += random_range (-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera View
x = clamp (x,view_h_half,room_width - view_w_half);
y = clamp (y,view_w_half,room_height + view_h_half);



//Update camera view
camera_set_view_pos(can,x - view_h_half,y - view_w_half);