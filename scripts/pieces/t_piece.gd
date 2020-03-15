extends Piece

class_name TPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [
				[
					[0, 6, 0],
					[6, 6, 6]
				],
				[					
					[6, 0],
					[6, 6],
					[6, 0],
				],				
				[					
					[6, 6, 6],
					[0, 6, 0]
				],	
				[					
					[0, 6],
					[6, 6],
					[0, 6],
				],			
			]
	self.transformation_length = 4
	self.number = 6


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
