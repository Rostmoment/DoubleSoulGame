extends Control

var dialog_ = preload("res://assets/dialogs/balloon_2.tscn")
var end = load("res://assets/dialogs/dialog_last.dialogue")
var en_end = load("res://assets/dialogs/dialog_last.dialogue")
var _window = preload("res://assets/titles/window.tscn")
var window = null
var value_win = 0
func _physics_process(_delta):
	if value_win == 100:
		window.queue_free()
		get_tree().change_scene_to_file("res://assets/titles/windows_error.tscn")
func _ready():
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	if ConfigLanguage.localization == 0:
		dialog.start(end, "start")
	if ConfigLanguage.localization == 1:
		dialog.start(en_end, "start")
func windows_del():
	$Window.queue_free()
	$Window2.queue_free()
func windows_spawn():
	$AudioStreamPlayer.play()
	while value_win <=100:
		await get_tree().create_timer(0.2).timeout
		window = _window.instantiate()
		get_tree().current_scene.add_child(window)
		window.position.x = randi_range(0, 1152)
		window.position.y = randi_range(0, 648)
		value_win += 1
