scr_player_apply_velocity();
scr_player_horizontal_move();

if (scr_player_is_colliding(hazard_map)) {
	state_switch("death");
	exit;
}

// Check if the player is no longer in the air
if (scr_player_is_bottom_colliding(collision_map, 1)) {
	state_switch("onGround");
	exit;
}

// Enable variable jump height
if (state_new) {
	retain_jump_frames = 0;
	
	if (keyboard_check(vk_space)) {
		retain_jump_frames = 6;
	}
}

// Apply gravity to velocity
if (retain_jump_frames > 0 && keyboard_check(vk_space)) {
	retain_jump_frames = retain_jump_frames - 1;
} else {
	retain_jump_frames = 0;
	vertical_velocity = max(-max_vertical_velocity, vertical_velocity + obj_control_gravity.room_gravity);
}