extends Window

var fith_ = preload("res://assets/titles/fith.tscn")
func _ready():
	$AnimationPlayer.play("color")
	$AnimationPlayer2.play("text")
	await get_tree().create_timer(5.0).timeout
	queue_free()


func _on_mouse_entered():
	var fith = fith_.instantiate()
	get_tree().current_scene.add_child(fith)
