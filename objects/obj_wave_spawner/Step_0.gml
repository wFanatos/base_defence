/// @desc Spawn waves

if (!waveOngoing && instance_number(obj_enemy) == 0 && keyboard_check_pressed(waveStartKey)) {
	alarm_set(0, 1);
	waveOngoing = true;
}