extends Node2D

func _on_area_2d_body_entered(_body):
	$StaticBody2D/AnimationPlayer.play("stand")
func _on_area_2d_body_exited(_body):
	$StaticBody2D/AnimationPlayer.play("re")
