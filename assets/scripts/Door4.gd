extends Area2D

func _on_body_entered(body):
	ConfigLanguage.room4_finish = 1
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")
