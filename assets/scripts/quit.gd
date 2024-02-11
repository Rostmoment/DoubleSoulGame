extends Area2D


func _on_body_entered(_body):
	get_tree().quit()
