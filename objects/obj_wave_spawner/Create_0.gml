/// @desc Init

function EnemyData(_obj, _count, _spawnType) constructor {
	obj = _obj;
	count = _count;
	spawnType = _spawnType;
}

function WaveData(_enemyData) constructor {
	enemyData = _enemyData;
}

currentWave = 0;
waveData = [
	new WaveData([new EnemyData(obj_enemy, 2, spawn_type.ENEMY_GROUND)]),
	new WaveData([new EnemyData(obj_enemy, 5, spawn_type.ENEMY_GROUND), 
				  new EnemyData(obj_enemy, 1, spawn_type.ENEMY_FLYING)])
]
groundSpawnPoints = [];
flyingSpawnPoints = [];
waveOngoing = false;
waveStartKey = ord("K");