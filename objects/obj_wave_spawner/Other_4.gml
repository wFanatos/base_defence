/// @desc Find spawn points

for (var i = 0; i < instance_number(obj_spawn_point); i++) {
	var inst = instance_find(obj_spawn_point, i);
	
	if (inst != noone && inst.spawnType == spawn_type.ENEMY_GROUND) {
		array_push(spawnPoints, inst);
	}
}