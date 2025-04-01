// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_machine_player(){
	
	switch(estado)
	{
		case "move-se" :
		{
			vspd = lengthdir_y(spd,dir)
			hspd = lengthdir_x(spd,dir)
		
			if(global.attack)
			{
				estado = "ataque"
			}
			
			if(global.left and global.right) hspd = 0;
			
			if(global.down and global.up) vspd = 0;
			
		
		}
		break;
	
		case "ataque" :
		{
			hspd = 0
			vspd = 0
			
		
			if(!instance_exists(obj_ataque)) var _atttack = instance_create_layer(x + lengthdir_x(sprite_height,dir),y + lengthdir_y(sprite_height,dir),layer,obj_ataque)
			 
			

		}
		break;	
	
	
	  	default :
			estado = "move-se"
		break;
	}

}