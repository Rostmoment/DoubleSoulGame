extends Area2D


func _on_body_entered(body):
	$AnimatedSprite2D.play("ready")
	#ConfigLanguage.music = 1
