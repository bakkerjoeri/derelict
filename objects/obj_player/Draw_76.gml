if (state_name = "inAir") {
	sprite_index = spr_player_jump;
	image_speed = 0;
	
	if (sign(vertical_velocity) == sign(obj_control_gravity.room_gravity_direction)) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else if (
	state_name = "onGround" &&
	abs(horizontal_velocity) > 0
) {
	sprite_index = spr_player_walk;
	image_speed = (horizontal_velocity / max_horizontal_velocity) * 0.5;
} else {
	sprite_index = spr_player_idle
}