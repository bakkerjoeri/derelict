draw_self();

draw_text(camera_get_view_x(view_camera[0]) + 18, camera_get_view_y(view_camera[0]) + 18, state_name);

if (horizontal_velocity > 0 && state_name = "onGround") {
	image_xscale = 1;
}

if (horizontal_velocity < 0 && state_name = "onGround") {
	image_xscale = -1;
}