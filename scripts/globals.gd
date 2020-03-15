extends Node

const ROWS: int = 16
const COLS: int = 10

const SQ_SIZE: int = 40 # square size

const COLORS = [
	'', # 0 is ignored
	Color('#EFD65F'), 
	Color('#ED9444'),
	Color('#E55652'),
	Color('#E35A8A'), # C35AE3
	Color('#0BDEAF'),
	Color('#5ABAE3'),
	Color('#82EA54')
]

const BX: int = 40 # board X
const BY: int = 60 # board Y

const SQ_OFST: int = 4 # board square offset

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
