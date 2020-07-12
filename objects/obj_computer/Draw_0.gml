draw_self();

if (can_activate) {
	var instruction_width = string_width(instructions);
	
	draw_set_color(c_black);
	draw_rectangle(
		max(0, x + (sprite_width / 2) - (instruction_width / 2) - 4),
		max(0, y - 12 - 4),
		max(0, x + (sprite_width / 2) + (instruction_width / 2) + 4),
		max(0, y - 12 + 8),
		false
	);

	draw_set_color(c_white);
	draw_text(
		max(4, x + (sprite_width / 2) - (instruction_width / 2)),
		max(4, y - 12),
		instructions
	);
}