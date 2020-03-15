extends Piece

class_name OPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [
				[
					[1, 1],
					[1, 1]
				]
			]
	self.transformation_length = 1
	self.number = 1
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
