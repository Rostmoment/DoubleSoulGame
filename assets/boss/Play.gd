extends Area2D


func _on_body_entered(_body):
	get_tree().change_scene_to_file("res://assets/boss/boss_fight3.tscn")
