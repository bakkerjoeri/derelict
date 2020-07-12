can_activate = false;

if (
	!has_been_activated
	&& obj_player.state_name == "onGround"
	&& distance_to_object(obj_player) < 16
) {
	can_activate = true;
}