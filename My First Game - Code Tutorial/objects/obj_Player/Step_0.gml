//Control Player
if (keyboard_check(ord("W")) or keyboard_check(vk_up))
{
	y = y - global.Player_Speed;
}

if (keyboard_check(ord("S")) or keyboard_check(vk_down))
{
	y = y + global.Player_Speed;
}

if (keyboard_check(ord("A")) or keyboard_check(vk_left))
{
	x = x - global.Player_Speed;
}

if (keyboard_check(ord("D")) or keyboard_check(vk_right))
{
	x = x + global.Player_Speed;
}

//change the rotation of player to mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);
	
//Shooting
coolDown = coolDown - 1;
if (mouse_check_button(mb_left) && (coolDown <= 0))
{
	instance_create_layer(x,y,"layer_bullet",obj_Bullet);
	coolDown = global.Shooting_CoolDown;
}
