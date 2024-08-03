extends Node

@export var LeftTriggerZone: Node
@export var RightTriggerZone: Node

var petCounter: int

var win: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	win = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if petCounter == 10:
		win = true
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


func _on_timer_timeout():
	if (win == true):
		print ("You Win!") 
	elif (win == false):
		print ("You Lose!")
