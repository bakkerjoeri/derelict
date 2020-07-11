var offset = 0;

if (argument_count >= 1) {
	offset = argument[0];
}

var tile_at_top_left = tilemap_get_at_pixel(collision_map, bbox_left, bbox_top - offset) & tile_index_mask;
var tile_at_top_right = tilemap_get_at_pixel(collision_map, bbox_right, bbox_top - offset) & tile_index_mask;
	
if (tile_at_top_left != 0 || tile_at_top_right != 0) {
	return true;
}

return false;