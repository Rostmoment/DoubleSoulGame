extends Area2D



func _on_body_entered(body):
	if ConfigLanguage.checkpoint_r2 == 0:
		body.position = Vector2(96, -27)
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r2 == 1:
		body.position = Vector2(1016, -522)
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r2 == 2:
		body.position = Vector2(3355, -984)
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r2 == 3:
		body.position = Vector2(3839, -1176)
		ConfigLanguage.death += 1



func _on_check_point_body_entered(_body):
	ConfigLanguage.checkpoint_r2 = 1


func _on_check_point_2_body_entered(_body):
	ConfigLanguage.checkpoint_r2 = 2
	
func _on_check_point_3_body_entered(_body):
	ConfigLanguage.checkpoint_r2 = 3
