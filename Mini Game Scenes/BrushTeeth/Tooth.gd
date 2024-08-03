extends Area2D

#@export var ToothHealth: int
var ToothHealth: int = 0
@onready var DirtyTooth =  get_child(0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#print (name)
	#print (DirtyTooth.name)
	#print ("Hello")# Replace with function body.

func _mouse_enter():
	if ToothHealth != 3:
		ToothHealth += 1
		print ("ToothHealth %d" % ToothHealth)
		SignalBus.on_hit.emit()
		if ToothHealth == 3:
			DirtyTooth.hide()
	else:
		
		print ("Tooth Cleaned")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
