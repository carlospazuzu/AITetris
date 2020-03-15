extends Piece

class_name LPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()	
	self.mat = [
				[
					[5, 0, 0],
					[5, 5, 5]
				],
				[					
					[5, 5],
					[5, 0],
					[5, 0],
				],				
			]
	self.transformation_length = 2
	self.number = 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
