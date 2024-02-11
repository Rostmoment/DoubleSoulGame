extends Area2D


func _on_body_entered(body):
	ConfigLanguage.dialog_reading = 1
	$"../Black/ColorRect/AnimationPlayer".play("black")
	$Timer.start()
	$Timer2.start()


func _ready():
	$Portal/AnimationPlayer.play("portal")
	


func _on_timer_timeout():
	$DialogPoint5.position = Vector2(-325.714, 142.857)
	


func _on_timer_2_timeout():
	$"../Soul1".position = Vector2(494, 370)
