state_machine_init();
state_create("onGround", scr_player_state_on_ground);
state_create("inAir", scr_player_state_in_air);
state_create("death", scr_player_state_death);
state_init("inAir");

horizontal_velocity = 0;
vertical_velocity = 0;

max_vertical_velocity = 3;
max_horizontal_velocity = 1.6;
walking_acceleration = 0.4;
walking_decceleration = 0.7;
thrust_acceleration = 0.1;

jump_velocity = 2.5;

jump_buffer = 0;
has_buffered_jump = false;

// Collision stuff
var collision_map_layer = layer_get_id("collision_map");
collision_map = layer_tilemap_get_id(collision_map_layer);

var hazard_map_layer = layer_get_id("hazard_map");
hazard_map = layer_tilemap_get_id(hazard_map_layer);

sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);


