extends Node2D

@export var shot_scene: PackedScene = null
@export var shot_velocity: Vector2 = Vector2.LEFT * 100


func _on_shoot_timer_timeout():
	var shot: RigidBody2D = shot_scene.instantiate() as RigidBody2D
	shot.linear_velocity = shot_velocity
	shot.position = $ShotOrigin.global_position
	add_sibling(shot)
