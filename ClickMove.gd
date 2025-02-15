extends Node2D

export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event.is_action_pressed('left_click'):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	if position.distance_to(target) > 5:
		position += velocity*delta
