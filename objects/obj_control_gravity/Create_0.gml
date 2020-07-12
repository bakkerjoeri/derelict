gravity_strength = 0.15;
on_phase_duration = 2 * room_speed;
off_phase_duration = 1 * room_speed;

room_gravity = gravity_strength;
room_gravity_direction = 1;
is_gravity_on = true;

phase_time_left = on_phase_duration;
run_timer = true;

has_unlocked_float_phase = false;
has_unlocked_upwards_gravity = false;
has_unlocked_manual_gravity = false;