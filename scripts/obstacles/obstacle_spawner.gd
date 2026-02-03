extends Node3D

@export var obstacle_scene: PackedScene
@export var spawn_x: float = 15.0
@export var spawn_delay: float = 2.0
@export var gap_height: float = 3.0

var timer := 0.0

func _physics_process(delta):
	timer += delta
	if timer >= spawn_delay:
		timer = 0.0
		spawn_obstacle()

func spawn_obstacle():
	var obstacle = obstacle_scene.instantiate()
	var world = get_parent().get_node("World")
	world.add_child(obstacle)
	obstacle.global_position = Vector3(spawn_x, randf_range(-2.0, 2.0),0)
