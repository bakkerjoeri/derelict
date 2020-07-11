// Horizontal movement
var horizontal_acceleration = walking_acceleration;
var horizontal_decceleration = walking_decceleration;

if (state_name == "inAir") {
	horizontal_acceleration = thrust_acceleration;
	horizontal_decceleration = thrust_acceleration;
}

var is_key_left_pressed = keyboard_check(vk_left);
var is_key_right_pressed = keyboard_check(vk_right);
var horizontal_direction = is_key_right_pressed - is_key_left_pressed;

if (is_key_left_pressed || is_key_right_pressed) {
	horizontal_velocity = lerp(horizontal_velocity, max_horizontal_velocity * horizontal_direction, horizontal_acceleration);
} else {
	horizontal_velocity = lerp(horizontal_velocity, 0, horizontal_decceleration);
}