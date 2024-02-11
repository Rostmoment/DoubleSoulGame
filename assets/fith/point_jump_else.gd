extends Area2D



func _on_body_entered(body):
	body.floor_ = true
	if Input.is_action_pressed("jump"):
		$DoubleJump.scale = Vector2(1.3, 1.3)
		await get_tree().create_timer(0.5).timeout
		$DoubleJump.scale = Vector2(1.0, 1.0)


func _on_body_exited(body):
	body.floor_ = false
