/// @desc Debug

draw_text(10, 50, "Wave Ongoing: " + string(waveOngoing));
draw_text(10, 70, "Wave Num: " + string(currentWave));

var enemyCount = 0;
if (currentWave < array_length(waveData)) {
	for (var i = 0; i < array_length(waveData[currentWave].enemyData); i++) {
		enemyCount += waveData[currentWave].enemyData[i].count;
	}
}
draw_text(10, 90, "Num Enemies Left: " + string(enemyCount));