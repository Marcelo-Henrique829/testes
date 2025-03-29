// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//inputs
global.left   =0
global.right  =0
global.down	  =0
global.up	  =0
global.attack =0

//teclas de movimento presssionadas
global.left_p  =0
global.right_p =0
global.up_p    =0
global.down_p  =0



function scr_inputs()
{
	global.left =  keyboard_check(ord("A"))
	global.right =  keyboard_check(ord("D"))
	global.up=  keyboard_check(ord("W"))
	global.down =  keyboard_check(ord("S"))
	global.attack = mouse_check_button_pressed(mb_left)


	global.left_p =  keyboard_check_pressed(ord("A"))
	global.right_p =  keyboard_check_pressed(ord("D"))
	global.up_p=  keyboard_check_pressed(ord("W"))
	global.down_p =  keyboard_check_pressed(ord("S"))

}