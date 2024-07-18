extends Area2D

@export var target_game_scene: String #name of target mini game
var mini_game_folder = "res://Mini Game Scenes/" #location where mini games are stored

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	
	await get_tree().create_timer(1.0).timeout #wait 1 second
	print("Test")
	var full_path = mini_game_folder + target_game_scene + ".tscn" 
	var scene_tree = get_tree()
	scene_tree.change_scene_to_file(full_path)
