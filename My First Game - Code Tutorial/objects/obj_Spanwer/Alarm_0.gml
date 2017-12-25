var spawn_Position = irandom_range(0,1);
if (spawn_Position == 0)
	instance_create_layer(random_range(0,100),random(room_height),"layer_enemy",obj_EnemySpawn);
else
	instance_create_layer(random_range(room_width - 100,room_width),random(room_height),"layer_enemy",obj_EnemySpawn);




alarm[0] = random_range(global.Spawn_Rate/2,global.Spawn_Rate);