/// @desc Collision

if (!hit) {
	vSpd += decay;
	image_angle = point_direction(x, y, x + hSpd, y + vSpd);
	
	var inst = instance_place(x + hSpd, y + vSpd, enemy);
	if (inst != noone) {
		hit = true;
		inst.hp -= dmg;
		follow = inst;
		lastFollowX = inst.x;
		lastFollowY = inst.y;
	}
	
	if (wall_collision(self, hSpd, vSpd)) {
		hSpd = 0;
		vSpd = 0;
		hit = true;
	}
}

if (follow != noone) {
	if (!instance_exists(follow)) {
		instance_destroy();
	}
	
	x += follow.x - lastFollowX;
	y += follow.y - lastFollowY;
	lastFollowX = follow.x;
	lastFollowY = follow.y;
}

if (x < 0 || x > room_width || y < 0 || y > room_height) {
	instance_destroy();
}