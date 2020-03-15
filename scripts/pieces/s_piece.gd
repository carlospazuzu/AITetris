extends Piece

class_name SPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [
				[
					[0, 4, 4],
					[4, 4, 0]
				],
				[					
					[4, 0],
					[4, 4],
					[0, 4],
				],				
			]
	self.transformation_length = 2
	self.number = 4


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
