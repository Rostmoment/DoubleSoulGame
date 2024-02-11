extends Area2D


func _on_body_entered(_body):
	get_tree().change_scene_to_file("res://assets/scenes/platformer_room.tscn")
	ConfigLanguage.checkpoint_r2 = 0
