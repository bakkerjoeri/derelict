var direction_string = "downward";

if (!is_gravity_on) {
	direction_string = "???";
} else if (room_gravity_direction < 0) {
	direction_string = "upward"
}

var room_center_x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
var room_center_y = camera_get_view_y(view_camera[0]) + 32;

var instructions1 = "Gravity: " + direction_string;
var instructions1_width = string_width(instructions1);
	
var instructions2 = string(phase_time_left);
var instructions2_width = string_width(instructions2);
	

draw_set_alpha(0.8);
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

if (has_unlocked_float_phase) {
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
}

draw_set_alpha(1);