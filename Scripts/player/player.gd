extends CharacterBody2D
# sets initial speed to 100.0
var SPEED = 100.0

# function is built into godot, used to define movement to arrow keys. UI_[direction] is arrow keys
@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:
	if GameState.canMove == true:
		var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		# if statement defines sprinting on Z and changes speed accordingly
		if Input.is_action_pressed("sprint"):
			SPEED = 175.0
		else:
			SPEED = 100.0
		velocity = input_vector * SPEED
	
	move_and_slide()
