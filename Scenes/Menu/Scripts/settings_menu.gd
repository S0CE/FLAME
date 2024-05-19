extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_resume_pressed():
	get_tree().change_scene_to_file("res://Scenes/Level/level-1.tscn")


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menu/main_menu.tscn")


func _on_check_button_pressed():
	pass # Replace with function body.
