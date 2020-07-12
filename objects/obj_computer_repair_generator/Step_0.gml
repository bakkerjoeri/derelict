event_inherited();

if (can_activate && keyboard_check_pressed(vk_up)) {
	has_been_activated = true;
	sprite_index = spr_computer_red;
	obj_control_gravity.has_unlocked_float_phase = true;
}