extends Area2D

@export var ToothHealth: int

# Called when the node enters the scene tree for the first time.
func _ready():
	print ("Hello")# Replace with function body.

func _mouse_enter():
	if ToothHealth != 5:
		ToothHealth += 1
		print ("ToothHealth %d" % ToothHealth)
		SignalBus.on_hit.emit()
	else:
		print ("Tooth Cleaned")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
