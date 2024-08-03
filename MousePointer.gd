extends CharacterBody2D
@export var SPEED = 100
@export var MouseSprite: Texture2D
@onready var SpriteNode =  get_child(0).get_child(0)
@export var SpriteScale = Vector2(1,1) 

# Currenty Customized for toothbrush

func _ready():
	SpriteNode.set_texture (MouseSprite)
	SpriteNode.set_scale(SpriteScale)

func _physics_process(delta):
	var direction = get_viewport().get_mouse_position() - self.position
	velocity = direction * delta * SPEED
	move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
