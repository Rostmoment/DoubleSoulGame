extends Button



func _on_pressed():
	get_parent().get_parent().queue_free()
