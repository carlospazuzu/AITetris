extends Node

const PIECES_SRC = 'res://scripts/pieces/'
const PIECES_LETTERS = ['o', 's', 't', 'z', 'i', 'j', 'l']

var pieces_array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# initialize pieces_array vector with all game block pieces
func setup():
	for i in range(len(PIECES_LETTERS)):
		var p = load(PIECES_SRC + PIECES_LETTERS[i] + '_piece.gd').new()
		p._ready()
		pieces_array.append(p)


func get_random_piece():
	randomize()
	return pieces_array[randi() % len(PIECES_LETTERS)]
