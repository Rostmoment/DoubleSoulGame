extends Node2D

var _false:int = 0
#var fight1 = null
var dialog_ = preload("res://assets/dialogs/balloon_2.tscn")
var end = load("res://assets/dialogs/end.dialogue")
var en_end = load("res://assets/dialogs/end.dialogue")
var click:bool = false

func _ready():
	$Anim.play("ready")
	$Anim.play("button")
func delete():
	queue_free()
func _input(_event):
	if Input.is_action_just_pressed("enter") and !click == true:
		click = true
		$Button.collision_layer = 2
		$Anim.pause()
func _on_false_body_entered(_body):
	await get_tree().create_timer(0.5).timeout
	if _false == 1:
		pass
	else:
		$Marker2D.position = get_tree().current_scene.get_node("Fith/PathFollow2D/Fith2/MISS").position
		$Anim.play("miss")
		await get_tree().create_timer(1.0).timeout
		$Anim.play("delete")
		var dialog = dialog_.instantiate()
		get_tree().current_scene.add_child(dialog)
		if ConfigLanguage.localization == 0:
			dialog.start(end, "miss")
		if ConfigLanguage.localization == 1:
			dialog.start(en_end, "miss")
func _on_true_body_entered(_body):
	_false = 1
	ConfigLanguage.end_hp_boss -= 1
	await get_tree().create_timer(1.0).timeout
	$Anim.play("delete")
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	dialog.start(end, "atk1")
