extends Node3D

@export var speed: float = 5.0
@export var destroy_x: float = -15.0

func _physics_process(delta):
	global_position.x -= speed * delta

	if global_position.x < destroy_x:
		queue_free()


func _on_area_3d_body_entered(body: Node3D) -> void:
		if body.name == "Player":
			body.die()
