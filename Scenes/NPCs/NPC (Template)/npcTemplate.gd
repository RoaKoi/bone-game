extends CharacterBody2D

func run_dialogue():
	GameState.start_dialogue()
	Dialogic.start("john saying hi")
	Dialogic.timeline_ended.connect(GameState.end_dialogue, CONNECT_ONE_SHOT)
