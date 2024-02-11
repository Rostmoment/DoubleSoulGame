extends Area2D



func _on_body_entered(_body):
	if ConfigLanguage.mode == 0:
		ConfigLanguage.mode = 1
	if ConfigLanguage.mode == 1:
		ConfigLanguage.mode = 0
