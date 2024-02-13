extends Area2D

@export var speed: int = 500

func _physics_process(delta):
	position -= transform.x * speed * delta

func _on_body_entered(body:Node2D):
	if body.has_method("take_damage"):
		body.take_damage()
	
	queue_free()