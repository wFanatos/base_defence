/// @desc Set view size

camera_set_view_size(view, viewWidth, viewHeight);

if (instance_exists(obj_player)) {
	var newX = clamp(obj_player.x - viewWidth / 2, 0, room_width - viewWidth);
	var newY = clamp(obj_player.y - viewHeight / 2, 0, room_height - viewHeight);
	var curX = camera_get_view_x(view);
	var curY = camera_get_view_y(view);
	var spd = .1;
	
	if (cameraOnPlayer) {
		camera_set_view_pos(view, lerp(curX, newX, spd), lerp(curY, newY, spd));
	}
	else {
		camera_set_view_pos(view, newX, newY);
		cameraOnPlayer = true;
	}
}
