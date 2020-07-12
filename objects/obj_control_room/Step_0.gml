var previous_room_index_x = room_index[0];
var previous_room_index_y = room_index[1];



room_index[0] = obj_player.x div room_bounds_width;
room_index[1] = obj_player.y div room_bounds_height;

if (
	previous_room_index_x != room_index[0] ||
	previous_room_index_y != room_index[1]
) {
	camera_set_view_pos(
		view_camera[0],
		room_index[0] * room_bounds_width,
		room_index[1] * room_bounds_height
	);
}

if (
	obj_player.state_name == "onGround" &&
	(spawn_room_index_x != room_index[0] || spawn_room_index_y != room_index[1])
) {
		var spawn_x = (obj_player.x & ~15) + 8;
		var spawn_y = (obj_player.y & ~15) + 8;
		spawn_point = [spawn_x, spawn_y];
		
		spawn_room_index_x = room_index[0];
		spawn_room_index_y = room_index[1];
	}