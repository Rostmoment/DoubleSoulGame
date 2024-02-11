extends Node2D

var soul = preload("res://assets/fith/soul_arena.tscn").instantiate()

func _ready():
	$Anim.play("ready")
	get_tree().paused = false
	get_parent().add_child(soul)
	soul.position = Vector2(576, 448)
func delete():
	queue_free()
	get_tree().paused = true
