extends Area2D




func _on_body_entered(_body):
	ConfigLanguage.room3_finish = 1
	ConfigLanguage.checkpoint_r3 = 0
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")
