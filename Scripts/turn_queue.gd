extends Node2D

class_name TurnQueue

var active_character

func initialize():
	active_character = get_child(0)

func play_turn():
	await(active_character.play_turn())
	var new_index : int = (active_character.getindex() + 1) % get_child_count()
	active_character = get_child(new_index)
