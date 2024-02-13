extends Node2D

@export var shot_scene: PackedScene = null
@export var shot_velocity: Vector2 = Vector2.LEFT * 100


func _on_shoot_timer_timeout():
	var shot: Node2D = shot_scene.instantiate()
	shot.position = $ShotOrigin.global_position
	add_sibling(shot)
