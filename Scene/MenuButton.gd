extends Button

@export var refrence_path = ""
@export var start_focused = false
# Called when the node enters the scene tree for the first time.
func _ready():
	if(start_focused):
		grab_focus()
	


func _on_pressed():
	if(refrence_path != ""):
		get_tree().change_scene(refrence_path)
	else:
		get_tree().quit() # Replace with function body.


func _on_mouse_entered():
	grab_focus() # Replace with function body.
