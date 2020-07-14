scr_player_apply_velocity();
scr_player_horizontal_move();

if (scr_player_is_colliding(hazard_map)) {
	state_switch("death");
	exit;
}

var is_bottom_colliding = scr_player_is_bottom_colliding(collision_map, 1);
var is_top_colliding = scr_player_is_top_colliding(collision_map, 1);

// Check if the player is no longer in the air
if (
	(
		obj_control_gravity.is_gravity_on &&
		obj_control_gravity.room_gravity_direction == 1 &&
		is_bottom_colliding
	) || (
		obj_control_gravity.is_gravity_on &&
		obj_control_gravity.room_gravity_direction == -1 &&
		is_top_colliding
	) || (
		!obj_control_gravity.is_gravity_on && (
			is_bottom_colliding ||
			is_top_colliding
		)
	)
	
) {
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
	
	vertical_velocity = clamp(
		vertical_velocity + obj_control_gravity.room_gravity,
		-max_vertical_velocity,
		max_vertical_velocity
	);
}