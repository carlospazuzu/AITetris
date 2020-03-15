extends Piece

class_name JPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [
				[
					[0, 0, 2],
					[2, 2, 2]
				],
				[					
					[2, 2],
					[0, 2],
					[0, 2],
				],				
			]
	self.transformation_length = 2
	self.number = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
