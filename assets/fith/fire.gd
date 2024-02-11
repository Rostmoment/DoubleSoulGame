extends Area2D

func _ready():
	$AnimatedSprite2D.play("fire")

func _on_body_entered(body):
	body.fail()
