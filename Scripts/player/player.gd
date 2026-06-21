extends CharacterBody2D
# sets initial speed to 100.0
var SPEED = 100.0

# function is built into godot, used to define movement to arrow keys. UI_[direction] is arrow keys
@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:
	if GameState.canMove == true:
		var velocity = Vector2.ZERO # The player's movement vector.
		if Input.is_action_pressed("move_right"):
			velocity.x += 1
		if Input.is_action_pressed("move_left"):
			velocity.x -= 1
		if Input.is_action_pressed("move_down"):
			velocity.y += 1
		if Input.is_action_pressed("move_up"):
			velocity.y -= 1
		
		if Input.is_action_pressed("sprint"):
			SPEED = 175
		else:
			SPEED = 100
		
		if velocity.length() > 0:
			velocity = velocity.normalized() * SPEED
		
		position += velocity * delta
	
	move_and_slide()
