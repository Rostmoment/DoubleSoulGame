extends Control

var dialog_ = preload("res://assets/dialogs/balloon_2.tscn")
var end = load("res://assets/dialogs/dialog_last.dialogue")
var en_end = load("res://assets/dialogs/dialog_last.dialogue")
func _ready():
	await get_tree().create_timer(5.0).timeout
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	if ConfigLanguage.localization == 0:
		dialog.start(end, "titles")
	if ConfigLanguage.localization == 1:
		dialog.start(en_end, "titles")
func _process(_delta):
	$AudioStreamPlayer.play()
