extends Node2D

@export var BrushCounter: int
@onready var WinText = get_child(2)
@onready var Brush = get_child(1)
# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.on_hit.connect(_on_hit)
	WinText.hide()

func _on_hit():
	if BrushCounter != 1:
		BrushCounter -=1
		print (BrushCounter)
	else:
		print ("You Win")
		WinText.show()
		Brush.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
