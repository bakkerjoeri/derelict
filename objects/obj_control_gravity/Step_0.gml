room_gravity = gravity_strength * room_gravity_direction * is_gravity_on;

if (has_unlocked_manual_gravity) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) {
		is_gravity_on = true;
		room_gravity_direction = -room_gravity_direction;
	}
	
	exit;
}

if (!run_timer) {
	exit;
}

if (!has_unlocked_float_phase && !has_unlocked_upwards_gravity) {
	exit;
}

if (phase_time_left > 0) {
	phase_time_left = phase_time_left - 1;
	exit;
}

if (has_unlocked_float_phase) {
	if (is_gravity_on) {
		is_gravity_on = false;
		phase_time_left = off_phase_duration;
		exit;
	}
	
	if (has_unlocked_upwards_gravity) {
		is_gravity_on = true;
		room_gravity_direction = -room_gravity_direction;
		phase_time_left = on_phase_duration;
		exit;
	}
	
	is_gravity_on = true;
	phase_time_left = on_phase_duration;
	exit;
}
