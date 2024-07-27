extends Sprite2D

@export var LeftTriggerZone: Node
@export var RightTriggerZone: Node

var petCounter: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if petCounter >= 10:
		print("Winner!")
	pass


func _on_left_pet_zone_mouse_entered():
	petCounter += 1
	print ("left hover")
	print (petCounter)
	pass # Replace with function body.


func _on_right_pet_zone_mouse_entered():
	print ("right hover")
	pass # Replace with function body.
