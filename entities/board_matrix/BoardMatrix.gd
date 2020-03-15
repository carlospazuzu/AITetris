extends Node2D


var matrix = []

onready var globals_ref = $"/root/globals"

var current_piece = []
var cpx: int = 0 # current piece x
var cpy: int = 0 # current piece y
var cpw: int = 0 # current piece width
var cph: int = 0 # current piece height

# Called when the node enters the scene tree for the first time.
func _ready():
	# initialize ROWS X COLS MATRIX
	for i in range(globals_ref.ROWS):
		matrix.append([])
		for _j in range(globals_ref.COLS):
			matrix[i].append(0)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	update()
	
	if Input.is_action_just_pressed("ui_left"):
		erase_current_piece()
		self.cpx -= 1
		self.cpx = int(clamp(self.cpx, 0, globals_ref.COLS - cpw))
		place_piece_on_board()
	if Input.is_action_just_pressed("ui_right"):
		erase_current_piece()
		self.cpx += 1
		self.cpx = int(clamp(self.cpx, 0, globals_ref.COLS - cpw))
		place_piece_on_board()
		
	


func _draw():
	for i in range(globals_ref.ROWS):
		for j in range(globals_ref.COLS):
			if matrix[i][j] != 0:
				draw_rect(Rect2(Vector2(globals_ref.BX + globals_ref.SQ_SIZE * j + globals_ref.SQ_OFST * j, globals_ref.BY + i * globals_ref.SQ_SIZE + globals_ref.SQ_OFST * i), Vector2(40, 40)), globals_ref.COLORS[matrix[i][j]], true)


func start_game():
	$"/root/pieces".setup()
	current_piece = $"/root/pieces".get_random_piece()
	cpw = current_piece.get_current_state_x_extend()
	cph = current_piece.get_current_state_y_extend()
	# current_piece._ready()
	calculate_initial_piece_position()
	place_piece_on_board()
	$PieceTimer.start()


func calculate_initial_piece_position():
	self.cpx = (globals_ref.COLS - current_piece.get_current_state_x_extend()) / 2
	self.cpy = 0


func place_piece_on_board():
	for i in cph:
		for j in cpw:
			matrix[cpy + i][cpx + j] = current_piece.get_current_block_number(i, j) # current_piece.mat[i][j]


func erase_current_piece():
	for i in cph:
		for j in cpw:
			matrix[cpy + i][cpx + j] = 0


func _on_PieceTimer_timeout():
	if cpy + cph == globals_ref.ROWS:
		$PieceTimer.stop()
		return
	erase_current_piece()
	self.cpy += 1
	place_piece_on_board()
	pass # Replace with function body.
