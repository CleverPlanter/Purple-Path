extends HBoxContainer



@onready var HeartGuiClass = preload("res://GUI/heart.tscn")


var HP = 0
var result: bool = false

#func _ready():
	

func setMaxHearts(max: int):
	for i in range(max):
		var heart = HeartGuiClass.instantiate()
		add_child(heart)
	HP = max
	print(HP)

#Health Update tests
func _input(event):
	if (event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT):
		print(HP)
		HP -= 1
		setHealth(HP)
		print(HP)
		if HP < 0:
			HP = 3
			setHealth(HP)
			print("he")
		
	if (event.is_pressed() and event.button_index == MOUSE_BUTTON_RIGHT):
		HP += 1
		setHealth(HP)
		print(HP)
		
		
func updateHealth(win: bool):
	if win == false:
		HP -= 1
		

func setHealth(currentHealth: int):
	var hearts = get_children()
	HP = currentHealth
	print(HP)
	for i in range(HP):
		hearts[i].update(true)
		
	for i in range(HP, hearts.size()):
		hearts[i].update(false)
	

