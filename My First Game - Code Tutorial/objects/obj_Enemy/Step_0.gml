if (instance_exists(obj_Player))
{
	move_towards_point(obj_Player.x,obj_Player.y,Moving_Speed);	
}

image_angle = direction;

if (hp <= 0) 
{
	with(obj_score) Score = Score + global.Enemy_Kill_Score;
	audio_play_sound(Enemy_Dead,1,0);
	instance_destroy();
}