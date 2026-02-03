extends Node3D

@export var scroll_speed: float = 5.0

func _physics_process(delta: float) -> void:
	global_position.x -= scroll_speed*delta
