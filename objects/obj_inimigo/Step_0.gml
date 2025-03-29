/// @description Insert description here
// You can write your code in this editor

var _hit = place_meeting(x,y,obj_ataque)

switch(estado)
{
	case "iddle":
	{
		sprite_index = spr_inimigo
		if(_hit)
		{
			estado = "hit"
		}
		
		hspd = 0
		vspd = 0
	}
	break;
	
	case "hit":
	{
		
		sprite_index = spr_inimigo_hit
		hspd = 1
		vspd = 1
		global.shake = 100
		
		
	}
	break;
	
}
