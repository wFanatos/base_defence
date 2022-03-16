/// @function wall_collision(object, horizontal_speed, vertical_speed);
/// @desc Checks if a collision will occur for an object
/// @param {id} object
/// @param {real} horizontal_speed
/// @param {real} vertical_speed
/// @return {bool} True if collision, false otherwise
function wall_collision(_obj, _hSpd, _vSpd) {
	var hCollision = false;
	var vCollision = false;
	var collider = 0;

	with (_obj) {
		// Horizontal collision
		if (place_meeting(x + _hSpd, y, obj_collision)) {
			collider = obj_collision;
			hCollision = true;
		}
	
		if (hCollision) {
			while (!place_meeting(x + sign(_hSpd), y, collider)) {
				x += sign(_hSpd);
			}
				
			_hSpd = 0;
			hSpd = 0;
		}
	
		x += _hSpd;

		// Vertical collision
		var tempY = y + _vSpd;
	
		if (place_meeting(x, tempY, obj_collision)) {
			collider = obj_collision;
			vCollision = true;
		}
	
		if (vCollision) {
			while (!place_meeting(x, y + sign(_vSpd), collider)) {
				y += sign(_vSpd);
			}
			
			_vSpd = 0;
			vSpd = 0;
		}
	
		y += _vSpd;
	}

	return vCollision || hCollision;
}