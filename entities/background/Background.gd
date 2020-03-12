extends Node2D


const ROWS: int = 16
const COLS: int = 10

const SQ_SIZE: int = 40 # square size

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _draw():
	# draws white background
	draw_rect(Rect2(Vector2(0, 0), Vector2(800, 800)), Color("FFFFFF"), true)
	
	for i in range(ROWS):
		for j in range(COLS):
			draw_rect(Rect2(Vector2(40 + SQ_SIZE * j + 4 * j, 60 + i * SQ_SIZE + 4 * i), Vector2(SQ_SIZE, SQ_SIZE)), Color("#EDE8EC"), true)
