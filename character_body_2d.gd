extends CharacterBody2D

@export var speed = 750

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_physical_key_pressed(KEY_Z):
		speed = 1200
	else:
		speed = 750
	velocity = input_direction * (speed)

func _physics_process(delta):
	get_input()
	move_and_slide()
