event_inherited();

if (has_been_activated && distance_to_object(obj_player) < 32) {
	var room_center_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
    var room_center_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

	var instructions1 = "gravity generator stable";
	var instructions1_width = string_width(instructions1);
	
	var instructions2 = "control regained";
	var instructions2_width = string_width(instructions2);
	
	var instructions3 = "press up or down to flip gravity!";
	var instructions3_width = string_width(instructions3);
	
	var instructions4 = "thanks for playing <3";
	var instructions4_width = string_width(instructions4);
	
	// Draw instructions1
	draw_set_color(c_black);
	draw_rectangle(
		max(0, room_center_x - (instructions1_width / 2) - 4),
		max(0, room_center_y - 4 - 12),
		max(0, room_center_x + (instructions1_width / 2) + 4),
		max(0, room_center_y + 8 - 12),
		false
	);

	draw_set_color(c_white);
	draw_text(
		max(4, room_center_x - (instructions1_width / 2)),
		max(4, room_center_y - 12),
		instructions1
	);
	
	// Draw instructions2
	draw_set_color(c_black);
	draw_rectangle(
		max(0, room_center_x - (instructions2_width / 2) - 4),
		max(0, room_center_y - 4),
		max(0, room_center_x + (instructions2_width / 2) + 4),
		max(0, room_center_y + 8),
		false
	);

	draw_set_color(c_white);
	draw_text(
		max(4, room_center_x - (instructions2_width / 2)),
		max(4, room_center_y - 12 + 12),
		instructions2
	);
	
	// Draw instructions3
	draw_set_color(c_black);
	draw_rectangle(
		max(0, room_center_x - (instructions3_width / 2) - 4),
		max(0, room_center_y - 4 + 12),
		max(0, room_center_x + (instructions3_width / 2) + 4),
		max(0, room_center_y + 8 + 12),
		false
	);

	draw_set_color(c_white);
	draw_text(
		max(4, room_center_x - (instructions3_width / 2)),
		max(4, room_center_y - 12 + 24),
		instructions3
	);
	
	// Draw instructions4
	draw_set_color(c_black);
	draw_rectangle(
		max(0, room_center_x - (instructions4_width / 2) - 4),
		max(0, room_center_y - 4 + 24),
		max(0, room_center_x + (instructions4_width / 2) + 4),
		max(0, room_center_y + 8 + 24),
		false
	);

	draw_set_color(c_white);
	draw_text(
		max(4, room_center_x - (instructions4_width / 2)),
		max(4, room_center_y - 12 + 36),
		instructions4
	);
}