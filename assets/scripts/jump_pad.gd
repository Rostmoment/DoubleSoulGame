extends Area2D



func _on_body_entered(body):
	body.velocity.y = -500
	$AnimatedSprite2D.play("jump")


func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("default")
