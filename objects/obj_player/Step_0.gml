state_execute();

if (keyboard_check_pressed(vk_space)) {
	jump_buffer = 6;
} else {
	jump_buffer = jump_buffer - 1;
}

has_buffered_jump = jump_buffer > 0;