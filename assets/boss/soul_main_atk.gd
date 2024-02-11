extends Area2D

var speed = -500
var vel = Vector2()

func _physics_process(delta):
	vel.y = speed * delta
	
	translate(vel)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_body_entered(body):
	queue_free()
	ConfigLanguage.hp_boss -= randi_range(35, 75)
