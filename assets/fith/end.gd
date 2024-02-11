extends Node2D

var balloon = preload("res://assets/dialogs/balloon.tscn").instantiate()
var balloon2 = preload("res://assets/dialogs/balloon.tscn").instantiate()
var dialog = load("res://assets/dialogs/soul_final.dialogue")
var en_dialog = load("res://assets/dialogs/soul_final.dialogue")
var finish = 0
var da = 0

func _ready():
	get_tree().current_scene.add_child(balloon)
	get_tree().current_scene.add_child(balloon2)


func _physics_process(delta):
	if ConfigLanguage.soul_final_dialog >= 6:
		ConfigLanguage.dialog_reading = 1
	if ConfigLanguage.soul_final_dialog == 1 and !finish == 1:
		$BossSecret/AnimationPlayer.play("walk")
		finish = 1
	if ConfigLanguage.soul_final_dialog == 2 and !finish == 2:
		$BossSecret/AnimationPlayer.play("walk2", -1, 2.0)
		finish = 2
	if ConfigLanguage.soul_final_dialog == 3 and !finish == 3:
		$BossSecret/AnimationPlayer.play("walk3")
		finish = 3
	if 	ConfigLanguage.soul_final_dialog == 5 and !finish == 5:
		$Black/ColorRect/AnimationPlayer.play("reblack")
		finish = 5
		ConfigLanguage.dialog_reading = 1
		await get_tree().create_timer(1.0).timeout
		if ConfigLanguage.localization == 0:
			balloon.start(dialog, "soul6")
		if ConfigLanguage.localization == 1:
			balloon.start(en_dialog, "soul6")
	if 	ConfigLanguage.soul_final_dialog == 6 and !finish == 6:
		ConfigLanguage.dialog_reading = 1
		$Fith/AnimationPlayer.play("hello")
		finish = 6
		await get_tree().create_timer(5.0).timeout
		ConfigLanguage.dialog_reading = 1
		if ConfigLanguage.localization == 0:
			balloon2.start(dialog, "soul7")
		if ConfigLanguage.localization == 1:
			balloon2.start(en_dialog, "soul7")
	if 	ConfigLanguage.soul_final_dialog == 7 and !finish == 7:
		finish = 7
		$White/ColorRect/AnimationPlayer.play("white1")
		$Fith/AnimationPlayer.play("end")
		$AudioStreamPlayer2D.play()
	if 	ConfigLanguage.soul_final_dialog == 8 and !finish == 8:
		finish = 8
		$AudioStreamPlayer2D.stop()
		$AudioStreamPlayer2D2.play()
	if 	ConfigLanguage.soul_final_dialog == 9 and !finish == 9:
		finish = 9
		$White/ColorRect/AnimationPlayer.play("white2")
		ConfigLanguage.true_final = 986537
		await get_tree().create_timer(10.0).timeout
		get_tree().quit()


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()


func _on_audio_stream_player_2d_2_finished():
	$AudioStreamPlayer2D2.play()
