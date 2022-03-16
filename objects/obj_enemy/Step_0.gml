/// @desc Movement/check for death

if (hp <= 0) {
	instance_destroy();
}

if (dir == directions.LEFT) {
	x -= moveSpd;
}
else {
	x += moveSpd;
}