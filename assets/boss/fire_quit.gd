extends Area2D

func _ready():
	$AnimatedSprite2D.play("default")



func _on_body_entered(body):
	ConfigLanguage.death += 1
	get_tree().quit()
