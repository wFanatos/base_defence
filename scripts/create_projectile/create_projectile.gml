/// @function create_projectile();
/// @desc Create a projectile 
/// @param {real} x
/// @param {real} y
/// @param {id} spr
/// @param {id} owner
/// @param {real} angle
/// @param {real} dmg
/// @param {real} spd
/// @param {id} enemy
/// @param {bool} arched
/// @return {}
function create_projectile(_x, _y, _spr, _owner, _angle, _dmg, _spd, _enemy, _arched){
	var obj = obj_projectile;
	if (_arched) {
		//obj = obj_arched_projectile;
	}
	
	with (instance_create_layer(_x, _y, "Projectiles", obj)) {
		sprite_index = _spr;
		image_angle = _angle;
		ignoreEntity = _owner;
		dmg = _dmg;
		moveSpd = _spd;
		enemy = _enemy;
		
		hSpd = cos(degtorad(_angle)) * moveSpd;
		vSpd = -sin(degtorad(_angle)) * moveSpd;
	}
}