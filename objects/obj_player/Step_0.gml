/// @description Insert description here
// You can write your code in this editor
#region

	var _esquerda =	global.left
	var _direita =	global.right
	var _cima   =	global.up
	var _baixo  =	global.down
	var _ataque =	global.attack

#endregion


var _move_all = _esquerda or _direita or _cima or _baixo
var _moveh = _direita - _esquerda;
var _movev = _baixo - _cima;




scr_state_machine_player()












show_debug_message(_esquerda)

show_debug_message(image_xscale)