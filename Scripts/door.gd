extends Path2D

var isOpen = false
@onready var animation = $AnimationPlayer

func _on_area_2d_area_entered(area):
	if !isOpen:
		isOpen = true
		animation.play("move")
