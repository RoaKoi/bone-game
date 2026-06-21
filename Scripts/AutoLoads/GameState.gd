extends Node

var canMove = true
var isInteracting = false

func start_dialogue():
	canMove = false
	isInteracting = true

func end_dialogue():
	canMove = true
	isInteracting = false
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
