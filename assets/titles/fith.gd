extends Window


func _ready():
	$Control/AnimationPlayer.play("creep")
	await get_tree().create_timer(1.0).timeout
	queue_free()
