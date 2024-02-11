extends Area2D

var speed = 200
var vel = Vector2()

func _physics_process(delta):
	vel.y = speed * delta
	
	translate(vel)


func _on_body_entered(body):
	ConfigLanguage.death += 1
	get_tree().quit()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
