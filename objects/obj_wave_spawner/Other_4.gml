/// @desc Find spawn points

for (var i = 0; i < instance_number(obj_spawn_point); i++) {
	var inst = instance_find(obj_spawn_point, i);
	
	if (inst != noone) {
		if (inst.spawnType == spawn_type.ENEMY_GROUND) {
			array_push(groundSpawnPoints, inst);
		}
		else if (inst.spawnType == spawn_type.ENEMY_FLYING) {
			array_push(flyingSpawnPoints, inst);
		}
	}
}