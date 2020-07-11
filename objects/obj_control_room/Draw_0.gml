exit;

draw_text(
	camera_get_view_x(view_camera[0]) + 18,
	camera_get_view_y(view_camera[0]) + 60,
	"Room " + string(room_index[0]) + "-" + string(room_index[1])
);

draw_text(
	camera_get_view_x(view_camera[0]) + 18,
	camera_get_view_y(view_camera[0]) + 66,
	"Spawn " + string(spawn_point[0]) + "-" + string(spawn_point[1])
);

draw_rectangle(spawn_point[0] - 8, spawn_point[1] - 8, spawn_point[0] + 8, spawn_point[1] + 8, false);