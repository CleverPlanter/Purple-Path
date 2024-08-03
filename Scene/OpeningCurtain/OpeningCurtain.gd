extends Node2D

@onready var left_curtain = $LeftCurtain
@onready var right_curtain = $RightCurtain

var dragging = false
var dragging_left = false
var initial_drag_position = Vector2.ZERO
var left_initial_position
var right_initial_position
var drag_area = 300

func _ready():
	left_initial_position = left_curtain.position
	right_initial_position = right_curtain.position
	
	# Connect input_event signals from both curtains' Area2D nodes
	$LeftCurtain/Area2D.connect("input_event", Callable(self, "_on_left_curtain_input_event"))
	$RightCurtain/Area2D.connect("input_event", Callable(self, "_on_right_curtain_input_event"))

func _input(event):
	if dragging and event is InputEventMouseMotion:
		var drag_offset = event.position - initial_drag_position
		
		if dragging_left:
			_drag_curtain(left_curtain, left_initial_position, drag_offset, -1)
		else:
			_drag_curtain(right_curtain, right_initial_position, drag_offset, 1)
		
		if _is_curtain_fully_open():
			_curtain_opened()
			dragging = false
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.is_pressed():
		dragging = false

func _drag_curtain(curtain, initial_position, drag_offset, direction):
	var new_position = initial_position + Vector2(drag_offset.x * direction, 0)
	
	if direction == -1:
		new_position.x = clamp(new_position.x, initial_position.x - drag_area, initial_position.x)
	else:
		new_position.x = clamp(new_position.x, initial_position.x, initial_position.x + drag_area)
	
	curtain.position = new_position

func _on_left_curtain_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			dragging = true
			dragging_left = true
			initial_drag_position = event.position
		else:
			dragging = false

func _on_right_curtain_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			dragging = true
			dragging_left = false
			initial_drag_position = event.position
		else:
			dragging = false

func _is_curtain_fully_open():
	return left_curtain.position.x <= left_initial_position.x - drag_area and right_curtain.position.x >= right_initial_position.x + drag_area

func _curtain_opened():
	print("Curtain Open")

