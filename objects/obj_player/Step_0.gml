/// @desc Follow cursor

if (mouse_check_button_pressed(shootKey)) {
	create_projectile(x, y, spr_arrow, self, point_direction(x, y, mouse_x, mouse_y), 5, 5, noone, false);
}


if (mouse_x > x) {
	dir = directions.RIGHT;
}
else if (mouse_x < x) {
	dir = directions.LEFT;
}

sprite_index = idleSprites[dir];