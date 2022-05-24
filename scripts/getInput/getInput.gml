// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function getInput(){
	right = keyboard_check(ord("D")) or keyboard_clear(vk_right);
	left = keyboard_check(ord("A")) or keyboard_clear(vk_left);
	down = keyboard_check(ord("S")) or keyboard_clear(vk_down);
	up = keyboard_check_pressed(ord("W")) or keyboard_clear(vk_up);
	
	interact = keyboard_check_pressed(vk_space);
	
}
