extends Button




func _on_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")
	ConfigLanguage.room2_finish = 1
