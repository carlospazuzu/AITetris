extends Node2D

var game_start: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if not game_start:
		$"/root/pieces".setup()
		$"/root/Main/BoardMatrix".start_game()
		game_start = true
