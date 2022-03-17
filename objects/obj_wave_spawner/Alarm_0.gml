/// @desc Spawn timer

var spawnPoint = spawnPoints[random_range(0, array_length(spawnPoints))];
var enemyIndex = random_range(0, array_length(waveData[currentWave]));
var enemy = waveData[currentWave][enemyIndex];
var inst = instance_create_layer(spawnPoint.x, spawnPoint.y, "Enemies", enemy.obj);
inst.dir = spawnPoint.dir;
enemy.count--;

if (enemy.count <= 0) {
	array_delete(waveData[currentWave], enemyIndex, 1);
	
	if (array_length(waveData[currentWave]) == 0) {
		currentWave++;
		waveOngoing = false;
	}
}
else {
	alarm_set(0, random_range(room_speed, room_speed * 4));
}