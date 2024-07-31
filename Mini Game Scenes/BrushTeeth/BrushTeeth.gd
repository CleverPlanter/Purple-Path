extends Node2D

@export var BrushCounter: int
# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.on_hit.connect(_on_hit) # Replace with function body.

func _on_hit():
	if BrushCounter != 0:
		BrushCounter -=1
		print (BrushCounter)
	else:
		print ("You Win")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
