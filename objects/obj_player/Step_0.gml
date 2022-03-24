/// @desc Follow cursor

if (canShoot && mouse_check_button_pressed(shootKey)) {
	create_projectile(x, y, spr_arrow, self, point_direction(x, y, mouse_x, mouse_y), weapon.dmg, weapon.spd, weapon.decay, obj_enemy);
	canShoot = false;
	alarm_set(0, weapon.cd);
}

// FOR TESTING
if (keyboard_check_pressed(ord("1"))) {
	weapon = bow;
}
else if (keyboard_check_pressed(ord("2"))) {
	weapon = crossbow;
}

if (mouse_x > x) {
	dir = directions.RIGHT;
}
else if (mouse_x < x) {
	dir = directions.LEFT;
}

sprite_index = idleSprites[dir];