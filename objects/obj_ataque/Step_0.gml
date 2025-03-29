/// @description Insert description here
// You can write your code in this editor

image_xscale = lerp(image_xscale,1,0.1)
image_yscale = lerp(image_yscale,1,0.1)
var _distance = point_distance(x,y,obj_player.x,obj_player.y) 

show_debug_message(_distance)

if(_distance<= range * 2)
{
	
	
	//if(obj_player.image_xscale>=1)
	//{
	//		x+= 10

	//}
	//if(obj_player.image_xscale<=-1)
	//{
	//		x -= 10

	//}
	
	x += lengthdir_x(10,dir)
	y += lengthdir_y(10,dir)
	
}
else
{
	obj_player.estado = "move-se"
	instance_destroy()
}
