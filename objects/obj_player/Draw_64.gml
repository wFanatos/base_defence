/// @desc Debug

draw_text(10, 30, "Active Objects: " + string(instance_count));
if (weapon == bow) {
	draw_text(10, 110, "Weapon: Bow");
}
else {
	draw_text(10, 110, "Weapon: Crossbow");
}

if (alarm_get(0) != -1) {
	var wWidth = window_get_width();
	var wHeight = window_get_height();
	var percent = 100 - (alarm_get(0) / weapon.cd * 100);
	draw_healthbar(wWidth / 2 - 30, wHeight / 2 - 30, wWidth / 2 + 30, wHeight / 2 - 25, percent, c_black, c_gray, c_gray, 0, true, true);
}