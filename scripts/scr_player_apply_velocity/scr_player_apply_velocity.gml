y = y + round(vertical_velocity);

if (vertical_velocity > 0 && scr_player_is_bottom_colliding(collision_map)) {
	y = ((bbox_bottom & ~15) - 1) - sprite_bbox_bottom;
	vertical_velocity = 0;
}

if (vertical_velocity < 0 && scr_player_is_top_colliding(collision_map)) {
	y = ((bbox_top + 16) & ~15) - sprite_bbox_top;
	vertical_velocity = 0;
}

x = x + round(horizontal_velocity);

if (horizontal_velocity > 0 && scr_player_is_right_colliding(collision_map)) {
	x = ((bbox_right & ~15) - 1) - sprite_bbox_right;
	horizontal_velocity = 0;
}

if (horizontal_velocity < 0 && scr_player_is_left_colliding(collision_map)) {
	x = ((bbox_left + 16) & ~15) - sprite_bbox_left;
	horizontal_velocity = 0;
}
