/// @desc Init

function EnemyData(_obj, _count) constructor {
	obj = _obj;
	count = _count;
}

currentWave = 0;
waveData = [
	[new EnemyData(obj_enemy, 5)],
	[new EnemyData(obj_enemy, 10)]
]
spawnPoints = [];
waveOngoing = false;
waveStartKey = ord("K");