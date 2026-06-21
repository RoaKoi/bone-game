extends RayCast2D

var last_direction = Vector2.DOWN


@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		last_direction = Vector2.UP * 20
	elif Input.is_action_just_pressed("ui_down"):
		last_direction = Vector2.DOWN * 20
	elif Input.is_action_just_pressed("ui_left"):
		last_direction = Vector2.LEFT * 20
	elif Input.is_action_just_pressed("ui_right"):
		last_direction = Vector2.RIGHT * 20
	
	set_target_position(last_direction)
	
	if Input.is_action_just_pressed("x"):
		print(target_position)
		if is_colliding():
			var collider = get_collider()
			if collider.has_method("run_dialogue"):
				collider.run_dialogue()
