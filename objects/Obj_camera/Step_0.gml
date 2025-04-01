/// @description Insert description here
// You can write your code in this editor




global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera




gravando()


camera_set_view_size(view_camera[0],global.view_width, global.view_height); //aplicando o tamanho definido para a camera

if (instance_exists(alvo)){
	
	if(alvo==obj_player)
	{
		
		resolution_scale = lerp(resolution_scale,def_cam_scale,0.1)
		vel_cam = lerp(vel_cam,def_cam_speed,0.002)

		
	}
	else
	{
		resolution_scale = 3
		vel_cam = 0.005
		foccus_time--
		
		
		if(foccus_time<=0)
		{
			alvo = obj_player
			foccus_time = def_foccus_time
		}
	}
	
	 	
		
}

show_debug_message(resolution_scale)

if(keyboard_check(vk_space))
{
	resolution_scale++
}