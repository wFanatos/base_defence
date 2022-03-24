/// @function create_projectile();
/// @desc Create a projectile 
/// @param {real} x
/// @param {real} y
/// @param {id} spr
/// @param {id} owner
/// @param {real} angle
/// @param {real} dmg
/// @param {real} spd
/// @param {real} decay
/// @param {id} enemy
function create_projectile(_x, _y, _spr, _owner, _angle, _dmg, _spd, _decay, _enemy){
	var obj = obj_projectile;
	
	with (instance_create_layer(_x, _y, "Projectiles", obj)) {
		sprite_index = _spr;
		image_angle = _angle;
		ignoreEntity = _owner;
		dmg = _dmg;
		moveSpd = _spd;
		enemy = _enemy;
		decay = _decay;
		
		hSpd = cos(degtorad(_angle)) * moveSpd;
		vSpd = -sin(degtorad(_angle)) * moveSpd;
	}
}