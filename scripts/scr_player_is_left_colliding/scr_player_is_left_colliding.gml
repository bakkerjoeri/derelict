var tilemap = argument[0];
var offset = 0;

if (argument_count >= 2) {
	offset = argument[1];
}

var tile_at_top_left = tilemap_get_at_pixel(tilemap, bbox_left - offset, bbox_top) & tile_index_mask;
var tile_at_bottom_left = tilemap_get_at_pixel(tilemap, bbox_left - offset, bbox_bottom) & tile_index_mask;
	
if (tile_at_top_left != 0 || tile_at_bottom_left != 0) {
	return true;
}

return false;
