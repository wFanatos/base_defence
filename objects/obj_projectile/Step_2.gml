/// @desc Collision

if (!hitWall) {
	vSpd += 0.075;
	image_angle = point_direction(x, y, x + hSpd, y + vSpd);
	
	if (wall_collision(self, hSpd, vSpd)) {
		hSpd = 0;
		vSpd = 0;
		hitWall = true;
	}
}

if (x < 0 || x > room_width || y < 0 || y > room_height) {
	instance_destroy();
}