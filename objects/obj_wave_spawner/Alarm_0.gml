/// @desc Spawn timer

var enemyIndex = irandom_range(0, array_length(waveData[currentWave].enemyData) - 1);
var enemy = waveData[currentWave].enemyData[enemyIndex];
var spawnPoint = noone;
if (enemy.spawnType == spawn_type.ENEMY_GROUND) {
	spawnPoint = groundSpawnPoints[irandom_range(0, array_length(groundSpawnPoints) - 1)];
}
else if (enemy.spawnType == spawn_type.ENEMY_FLYING) {
	spawnPoint = flyingSpawnPoints[irandom_range(0, array_length(flyingSpawnPoints) - 1)];
}

var inst = instance_create_layer(spawnPoint.x, spawnPoint.y, "Enemies", enemy.obj);
inst.dir = spawnPoint.dir;
enemy.count--;
	
if (enemy.count <= 0) {
	array_delete(waveData[currentWave].enemyData, enemyIndex, 1);
	
	if (array_length(waveData[currentWave].enemyData) == 0) {
		currentWave++;
		waveOngoing = false;
	}
}


if (waveOngoing) {
	alarm_set(0, random_range(room_speed, room_speed * 4));
}