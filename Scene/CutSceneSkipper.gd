extends Label

@export var refrence_path = ""
var page = 0


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		page+=1
		
		if page == 1:
			set_text("press again")
		elif page == 2:
			get_tree().change_scene_to_file(refrence_path)
	
func _ready():
	await get_tree().create_timer(4).timeout # Replace with function body.
	get_tree().change_scene_to_file(refrence_path)
