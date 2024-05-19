extends Path2D

@export var speed_scale = 1.0
var activated = false
@onready var path = $PathFollow2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D/Sprite2D.visible = false

func _on_area_2d_body_entered(body):
	if body is Player && !activated:
		activated = true
		$Area2D/Sprite2D.visible = true
		$AnimationPlayer.play("move")
		$AnimationPlayer.speed_scale = speed_scale
	
func _process(delta):
	if path.progress_ratio == 1:
		$Area2D/Sprite2D.visible = false
