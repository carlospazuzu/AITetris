extends Piece

class_name IPiece

# Called when the node enters the scene tree for the first time.
func _ready():
	._ready()
	self.mat = [			
				[					
					[7, 7, 7, 7]					
				],		
				[					
					[7],
					[7],
					[7],
					[7]
				],	
			]
	self.transformation_length = 2
	self.number = 7


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
