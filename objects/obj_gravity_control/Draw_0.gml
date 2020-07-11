draw_text(camera_get_view_x(view_camera[0]) + 18, camera_get_view_y(view_camera[0]) + 34, "Gravity: " + string(room_gravity));

if (run_timer) {
	draw_text(camera_get_view_x(view_camera[0]) + 18, camera_get_view_y(view_camera[0]) + 50, string(phase_time_left));
}