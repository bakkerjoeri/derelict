event_inherited();

if (can_activate && keyboard_check_pressed(vk_up)) {
	has_been_activated = true;
	sprite_index = spr_computer_black;
	
	for (var i = 0; i < tilemap_get_width(collision_map); i++;)
	    {
	    for (var j = 0; j < tilemap_get_height(collision_map); j++;)
	        {
			var tile = tilemap_get(collision_map, i, j);
	        var tile_id = tilemap_get(collision_map, i, j) & tile_index_mask;
			
			if (tile_id == lock_tile_id) {
				tile = tile_set_empty(tile);
				tilemap_set(collision_map, tile, i, j);
			}
	    }
	}
}