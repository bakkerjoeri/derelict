scr_player_apply_velocity();
scr_player_horizontal_move();

if (scr_player_is_colliding(hazard_map)) {
	state_switch("death");
	exit;
};

var is_bottom_colliding = scr_player_is_bottom_colliding(collision_map, 1);
var is_top_colliding = scr_player_is_top_colliding(collision_map, 1);

// Check if the player is in the air
if (
	(
		obj_control_gravity.is_gravity_on &&
		obj_control_gravity.room_gravity_direction == 1 &&
		!is_bottom_colliding
	) || (
		obj_control_gravity.is_gravity_on &&
		obj_control_gravity.room_gravity_direction == -1 &&
		!is_top_colliding
	) || (
		!obj_control_gravity.is_gravity_on &&
		!is_bottom_colliding &&
		!is_top_colliding
	)
) {
	state_switch("inAir");
	exit;
}

// Check if player is trying to jump
if (keyboard_check_pressed(vk_space) || has_buffered_jump) {
	if (obj_control_gravity.is_gravity_on) {
		vertical_velocity = -jump_velocity * sign(obj_control_gravity.room_gravity_direction);
	} else if (is_top_colliding) {
		vertical_velocity = jump_velocity;
	} else if (is_bottom_colliding) {
		vertical_velocity = -jump_velocity;
	}
}