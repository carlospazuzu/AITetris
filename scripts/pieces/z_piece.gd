extends Piece

class_name ZPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [
				[
					[3, 3, 0],
					[0, 3, 3]
				],
				[					
					[0, 3],
					[3, 3],
					[3, 0],
				],				
			]
	self.transformation_length = 2
	self.number = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
