y = y + vertical_velocity;

if (vertical_velocity > 0 && scr_player_is_bottom_colliding()) {
	y = ((bbox_bottom & ~15) - 1) - sprite_bbox_bottom;
	vertical_velocity = 0;
}

if (vertical_velocity < 0 && scr_player_is_top_colliding()) {
	y = ((bbox_top + 16) & ~15) - sprite_bbox_top;
	vertical_velocity = 0;
}

x = x + horizontal_velocity;

if (horizontal_velocity > 0 && scr_player_is_right_colliding()) {
	x = ((bbox_right & ~15) - 1) - sprite_bbox_right;
	horizontal_velocity = 0;
}

if (horizontal_velocity < 0 && scr_player_is_left_colliding()) {
	x = ((bbox_left + 16) & ~15) - sprite_bbox_left;
	horizontal_velocity = 0;
}
