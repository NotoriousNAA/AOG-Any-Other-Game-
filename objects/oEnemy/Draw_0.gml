draw_self();

if (flash > 0)
{
	
	flash--;
	draw_self();
	shader_set(Shader1);
	draw_self();
	shader_reset();
}