extends Node

class_name Piece

# total number of transformations
var transformation_length = null
# the matrix of all piece transformations
var mat = null
# the number representing its color	
var number = null
# current transformation index
var current_state: int

# Called when the node enters the scene tree for the first time.
func _ready():
	current_state = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# increase to next state and resets it if number is bigger or equal
# total amount of states
func increase_state():
	current_state += 1
	if current_state >= transformation_length:
		current_state = 0



func get_current_state_x_extend():
	return len(self.mat[self.current_state][0])


func get_current_state_y_extend():
	return len(self.mat[self.current_state])


func get_current_state_mat():
	return self.mat[self.current_state]
	

func get_current_block_number(i, j):
	return self.mat[self.current_state][i][j]
