extends Area2D


func _on_body_entered(body):
	ConfigLanguage.key_tit = 1
	queue_free()
