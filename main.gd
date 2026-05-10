extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("plus"):
		print("plus")
		scale_window.call_deferred(25, 25)
		
	if Input.is_action_just_pressed("minus"):
		print("minus")
		scale_window.call_deferred(-25, -25)

func scale_window(x_change:int, y_change:int):
	get_window().size.x += x_change
	get_window().size.y += y_change
	print(get_window().size)
