extends Sprite2D

@export var LeftTriggerZone: Node
@export var RightTriggerZone: Node

@export var counter: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#counter = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_left_pet_zone_mouse_entered():
	counter += 1
	print ("left hover")
	pass # Replace with function body.


func _on_right_pet_zone_mouse_entered():
	print ("right hover")
	pass # Replace with function body.
