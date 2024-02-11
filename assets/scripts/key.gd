extends Area2D


func _on_body_entered(_body):
		ConfigLanguage.key_inv = 1
		$Sprite2D.visible = false
