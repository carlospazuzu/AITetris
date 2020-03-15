extends Node2D


onready var globals_ref = $"/root/globals"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _draw():
	# draws white background
	draw_rect(Rect2(Vector2(0, 0), Vector2(800, 800)), Color("FFFFFF"), true)
	
	# next piece block background rect
	draw_rect(Rect2(Vector2(500, 60), Vector2(280, 120)), Color("#EDE8EC"), true)
	
	# score background rect
	draw_rect(Rect2(Vector2(500, 320), Vector2(280, 60)), Color("#EDE8EC"), true)
	
	for i in range(globals_ref.ROWS):
		for j in range(globals_ref.COLS):
			draw_rect(Rect2(Vector2(globals_ref.BX + globals_ref.SQ_SIZE * j + globals_ref.SQ_OFST * j, globals_ref.BY + i * globals_ref.SQ_SIZE + globals_ref.SQ_OFST * i), Vector2(globals_ref.SQ_SIZE, globals_ref.SQ_SIZE)), Color("#EDE8EC"), true)
