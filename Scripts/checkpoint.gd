extends Area2D
class_name Checkpoint

@export var spawnpoint = false
@onready var sprite_2d = $Sprite2D
var activated = false

func activate():
	GameManager.current_checkpoint = self
	activated = true
	sprite_2d.animation = "activated"

func _on_body_entered(body):
	if body is Player && !activated:
		activate()
