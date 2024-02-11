extends StaticBody2D

func _physics_process(_delta):
	if ConfigLanguage.key_tit == 1:
		queue_free()
