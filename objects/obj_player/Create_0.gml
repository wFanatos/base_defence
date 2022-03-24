/// @desc Init

function WeaponData(_dmg, _spd, _cd, _decay) constructor {
	dmg = _dmg;
	spd = _spd;
	cd = _cd;
	decay = _decay;
}

dir = directions.RIGHT;
canShoot = true;
bow = new WeaponData(1, 5, room_speed / 4, 0.075);
crossbow = new WeaponData(2, 7, room_speed, 0.05);
weapon = crossbow;

// Sprites
idleSprites = [spr_player_left, spr_player_right];

// Controls
shootKey = mb_left;

// TODO: uncomment to test true random
//randomize();