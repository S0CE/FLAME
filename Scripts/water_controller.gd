extends Area2D

@export var area : WaterWall

var isDestroyed = false

func destroy():
	isDestroyed = true
	$AnimatedSprite2D.animation = "destroyed"
	area.monitoring = false
	area.visible = false
	
func _on_body_entered(body):
	if body is Player && !isDestroyed:
		destroy()
