extends Area2D

@export var speed := 1.0


func _physics_process(delta):
	$CollisionShape2D.rotation += speed * delta
	$Timer.start()

func _on_timer_timeout(delta):
	$CollisionShape2D.rotation += speed * delta
	$Timer.start()


func _on_body_entered(body):
	if ConfigLanguage.checkpoint_r3 == 0:
		body.position.x = 48
		body.position.y = 60
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r3 == 1:
		body.position.x = 46
		body.position.y = -631
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r3 == 2:
		body.position.x = 768
		body.position.y = -1095
		ConfigLanguage.death += 1
