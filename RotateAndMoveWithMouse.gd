extends Node2D

export (int) var speed = 200
var velocity = Vector2()

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()
	if Input.is_action_pressed("right_click"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("left_click"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	position += velocity*delta
