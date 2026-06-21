extends CharacterBody2D
# sets initial speed to 100.0
var SPEED = 100.0
# function is built into godot, used to define movement to arrow keys. UI_[direction] is arrow keys
func _physics_process(delta: float) -> void:
	
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	# if statement defines sprinting on Z and changes speed accordingly
	if Input.is_key_pressed(KEY_Z):
		SPEED = 175.0
	else:
		SPEED = 100.0
	
	velocity = input_vector * SPEED
	move_and_slide()

func player():
	pass
