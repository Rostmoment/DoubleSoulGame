extends CharacterBody2D

func _ready():
	_on_timer_timeout()
	$AnimationPlayer.play("lobotonyata")
	$AnimationPlayer.play("lobotomy")
	

func fith():
	$FITH.play()

func _on_timer_timeout():
	$AudioStreamPlayer.pitch_scale = randf_range(0.3, 2.0)
	$Timer.start()
