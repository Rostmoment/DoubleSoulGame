extends Area2D


func _on_body_entered(_body):
	ConfigLanguage.death += 1
	get_tree().quit()
