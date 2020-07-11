if (!run_timer) {
	exit;
}

if (phase_time_left > 0) {
	phase_time_left = phase_time_left - 1;
	exit;
}

if (room_gravity > 0) {
	room_gravity = 0;
	phase_time_left = off_phase_duration;
} else {
	room_gravity = gravity_strength;
	phase_time_left = on_phase_duration;
}

