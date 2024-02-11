extends Node2D


func _on_jumper_mode_body_entered(body):
	body.mode_2 = true

func _on_jumper_mode_off_body_entered(body):
	body.mode_2 = false
func _ready():
	$ColorRect/AnimationPlayer.play("idle")
