extends CharacterBody2D

@export var blood_blob_scene: PackedScene = null
@export var speed: float = 100

func _physics_process(_delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	move_and_slide()

func take_damage():
	var blood_blob = blood_blob_scene.instantiate()
	blood_blob.position = position
	add_sibling(blood_blob)
