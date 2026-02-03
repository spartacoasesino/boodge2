extends CharacterBody3D

@export var gravity: float = 30.0
@export var jump_force: float = 10.0

func _physics_process(delta):
	velocity.y -= gravity * delta
	velocity.z = 0

	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
	
	global_position.z = 0

	move_and_slide()
