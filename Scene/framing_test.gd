extends Node2D

@onready var heartsContainer = $CanvasLayer/healthContainer
#@onready var game = $GAMEindex
@export var maxHealth = 8
@export var currentHealth: int = maxHealth
# Called when the node enters the scene tree for the first time.
func _ready():
	heartsContainer.setMaxHearts(maxHealth) # Replace with function body.
	heartsContainer.setHealth(currentHealth)
	#if game.result.connect(hearts.Container.update_health)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#example of processign from the game

#signal win
#func gameLose():
	#result.emit(win = false boolean)
	
