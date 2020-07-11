var position_x = argument0;
var position_y = argument1;
var instance_to_check = argument2;

var collided_with = instance_place(position_x, position_y, instance_to_check);

if (collided_with == noone) {
	return false;
}

if (!variable_instance_exists(collided_with, "is_solid")) {
	return true;
}

return collided_with.is_solid;