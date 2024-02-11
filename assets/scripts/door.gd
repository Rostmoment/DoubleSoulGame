extends StaticBody2D



func _physics_process(_delta):
	if ConfigLanguage.key_inv == 1:
		queue_free()
