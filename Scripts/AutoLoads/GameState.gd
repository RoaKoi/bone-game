extends Node

var canMove = true

func start_dialogue():
	canMove = false

func end_dialogue():
	canMove = true
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
