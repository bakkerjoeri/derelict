if (!powered_on && obj_gravity_control.room_gravity > 0 && !place_meeting(x, y, obj_player)) {
	powered_on = true;
	image_speed = -1;
} else if (powered_on && obj_gravity_control.room_gravity == 0) {
	powered_on = false;
	image_speed = 1;
}

if (powered_on && image_index == 0) {
	image_speed = 0;
}

if (!powered_on && image_index == sprite_get_number(sprite_index) - 1) {
	image_speed = 0;
}

if (powered_on) {
	is_solid = true;
} else {
	is_solid = false;
}