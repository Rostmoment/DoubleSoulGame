extends Area2D

func _on_body_entered(body):
	body.position = Vector2(-440, 128)
	ConfigLanguage.death += 1
