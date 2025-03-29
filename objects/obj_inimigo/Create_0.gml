/// @description Insert description here
// You can write your code in this editor

estado = "iddle"
hspd = 0;
vspd = 0;
colision = function(_colisores)
{
	var _vspd = sign(vspd)
	var _hspd = sign(hspd)
	
	
	repeat(abs(hspd))
	{
		if(place_meeting(x+_hspd,y,_colisores))
		{
			hspd = 0;
		}
		else
		{
			x+= _hspd
		}
	}
	
	repeat(abs(vspd))
	{
		if(place_meeting(x,y+_vspd,_colisores))
		{
			vspd = 0;
		}
		else
		{
			y+= _vspd
		}
	}
}
