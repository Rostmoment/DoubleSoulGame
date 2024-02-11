extends Area2D

var buttonr2 = 0

func _on_body_entered(_body):
	if ButtonR2.buttonr2 == 1:
		$AnimatedSprite2D.play("ready")
	elif ButtonR2.buttonr2 == 0:
		$AnimatedSprite2D.play("ready")
	ButtonR2.buttonr2 = 1
	ConfigLanguage.room1_finish = 1
	print(ButtonR2.buttonr2)
