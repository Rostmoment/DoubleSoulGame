extends Area2D


func _on_body_entered(_body):
	get_tree().change_scene_to_file("res://assets/scenes/main_screen.tscn")
	ConfigLanguage.localization = 0
