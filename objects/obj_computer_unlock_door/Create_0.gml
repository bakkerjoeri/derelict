event_inherited();

collision_layer = layer_get_id("collision_map");
collision_map = layer_tilemap_get_id(collision_layer);
lock_tile_id = 0;
instructions = "press up to unlock";