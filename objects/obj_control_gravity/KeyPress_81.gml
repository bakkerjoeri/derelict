if (!global.is_debugging) {
	exit;
}

if (!has_unlocked_float_phase) {
	has_unlocked_float_phase = true;
	exit;
}

if (!has_unlocked_upwards_gravity) {
	has_unlocked_upwards_gravity = true;
	exit;
}

if (!has_unlocked_manual_gravity) {
	has_unlocked_manual_gravity = true;
}

has_unlocked_float_phase = false;
has_unlocked_upwards_gravity = false;
has_unlocked_manual_gravity = false;