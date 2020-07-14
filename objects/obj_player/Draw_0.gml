draw_self();

if (horizontal_velocity > 0 && state_name = "onGround") {
	image_xscale = 1;
}

if (horizontal_velocity < 0 && state_name = "onGround") {
	image_xscale = -1;
}

if (
	image_yscale != 1 && (
		(
			obj_control_gravity.is_gravity_on &&
			obj_control_gravity.room_gravity_direction = 1
		) || (
			!obj_control_gravity.is_gravity_on &&
			scr_player_is_bottom_colliding(collision_map, 1)
		)
	)
) {
	image_yscale = 1;
}

if (
	image_yscale != -1 && (
		(
			obj_control_gravity.is_gravity_on &&
			obj_control_gravity.room_gravity_direction = -1
		) || (
			!obj_control_gravity.is_gravity_on &&
			scr_player_is_top_colliding(collision_map, 1)
		)
	)
) {
	image_yscale = -1;
}

if (global.is_debugging) {
	draw_text(camera_get_view_x(view_camera[0]) + 18, camera_get_view_y(view_camera[0]) + 18, state_name);
}