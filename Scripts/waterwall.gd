extends Area2D
class_name WaterWall

func _on_body_entered(body):
	if body.has_method("die") && body is Player:
		body.die()
