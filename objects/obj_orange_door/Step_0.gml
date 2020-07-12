if (obj_computer_unlock_door_orange.has_been_activated && !unlock_activated) {
	image_speed = 0.1;
	unlock_activated = true;
}

if (unlock_activated && image_index == sprite_get_number(sprite_index) - 1) {
	image_speed = 0;
}