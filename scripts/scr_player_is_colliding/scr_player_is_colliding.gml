var tilemap = argument[0];
var offset = 0;

if (argument_count >= 2) {
	offset = argument[1];
}

return scr_player_is_top_colliding(tilemap, offset)
	|| scr_player_is_right_colliding(tilemap, offset)
	|| scr_player_is_bottom_colliding(tilemap, offset)
	|| scr_player_is_left_colliding(tilemap, offset);