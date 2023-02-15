extends Node2D

var maturity = {'seed':0, 'growth':[1, 2, 3, 4], 'death':[5, 6, 7]}
var stage
onready var anim = get_node("AnimatedSprite")

func _ready():
	stage = 5


func _process(delta):
	if BUTTON_LEFT:
		mature()


func mature():
	if stage == 0:
		anim.play("seed")
	elif stage <= 4:
		print_debug("stage"+stage)
	else:
		anim.play("death")[stage]
