extends CharacterBody2D

@export var speed:float = 100
@export var drag_factor:float = 10

var input_vector:Vector2


func _process(_delta: float) -> void:
	input_vector = Input.get_vector("left", "right", "up", "down")

func _physics_process(delta: float) -> void:
	velocity += input_vector * speed * delta
	velocity *= 1 - (drag_factor * delta)
	
	move_and_slide()
