scr_player_apply_velocity();
scr_player_horizontal_move();

// Check if the player is in the air
if (!scr_player_is_bottom_colliding(1)) {
	state_switch("inAir");
	exit;
}

// Check if player is trying to jump
if (keyboard_check_pressed(vk_space) || has_buffered_jump) {
	vertical_velocity = -jump_velocity;
}