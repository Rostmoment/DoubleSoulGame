extends Node2D

var dialog_ = preload("res://assets/dialogs/balloon_top.tscn")
var dia = load("res://assets/dialogs/preend.dialogue")
var en_dia = load("res://assets/dialogs/preend.dialogue")
var yes = 0
func _ready():
	
	
	$Music.play()
	$CharacterBody2D/Camera2D.position_smoothing_enabled = true
	$CharacterBody2D/Camera2D.position_smoothing_speed = 3.0
	$CharacterBody2D/Camera2D.rotation_smoothing_enabled = true
	$CharacterBody2D/Camera2D.rotation_smoothing_speed = 3
	$CharacterBody2D/Camera2D.limit_left = -32
	$CharacterBody2D/Camera2D.limit_bottom = 16
	$CharacterBody2D/Camera2D.limit_top = -208
	$CharacterBody2D/Camera2D.zoom = Vector2(3.2, 3.2)

func _physics_process(_delta):
	if !$CharacterBody2D.is_on_floor():
		if Input.is_action_pressed("left"):
			$CharacterBody2D/Sprite2D.rotation -= 0.1
		else:
			$CharacterBody2D/Sprite2D.rotation += 0.1
	if $CharacterBody2D.is_on_floor():
		$CharacterBody2D/Sprite2D.rotation = 0
		
		
	if ConfigLanguage.dialog_end == 1 and !yes == 1:
		ConfigLanguage.dialog_reading = 1
		yes = 1
		$BgColor.play("red")
		$Fith/AnimationPlayer.play("hello")
		await get_tree().create_timer(4.0).timeout
		var dialog: Node = dialog_.instantiate()
		get_tree().current_scene.add_child(dialog)
		ConfigLanguage.dialog_reading = 1
		if ConfigLanguage.localization == 0:
			dialog.start(dia, "fight_mini2")
		if ConfigLanguage.localization == 1:
			dialog.start(en_dia, "fight_mini2")
	if ConfigLanguage.dialog_end == 2 and !yes == 2:
		yes = 2
		$Fith/AnimationPlayer.play("good bay")
	if ConfigLanguage.dialog_end == 3 and !yes == 3:
		yes = 3
		$ColorRect/AnimationPlayer.play("black_fast")
		$Music.stop()
		await get_tree().create_timer(5.0).timeout
		get_tree().change_scene_to_file("res://assets/fith/logodomy_fight.tscn")

func cont():
	$Music.playing = true
	$DeathCount.visible = true
func _on_music_finished():
	$Music.play()
func _on_fall_body_entered(body):
	ConfigLanguage.dialog_reading = 1
	$ColorRect/AnimationPlayer.play("black")
	$Music.playing = false
	await get_tree().create_timer(3.0).timeout
	$ColorRect/AnimationPlayer.play("reblack")
	body.position = Vector2(5928, -1600)
	$Music.playing = true
func _on_dialog_body_entered(_body):
	var dialog: Node = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	ConfigLanguage.dialog_reading = 1
	if ConfigLanguage.localization == 0:
		dialog.start(dia, "start")
	if ConfigLanguage.localization == 1:
		dialog.start(en_dia, "start")
	$Dialog.queue_free()
func _on_dialog_2_body_entered(_body):
	var dialog: Node = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	ConfigLanguage.dialog_reading = 1
	if ConfigLanguage.localization == 0:
		dialog.start(dia, "fight_mini")
	if ConfigLanguage.localization == 1:
		dialog.start(en_dia, "fight_mini")
	$Dialog2.queue_free()
