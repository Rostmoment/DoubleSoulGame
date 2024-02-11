extends CanvasLayer


func _on_button_pressed():
	visible = false
	get_tree().paused = false
	$Control/AudioStreamPlayer2D.playing = false
	$"..".cont()
	
func _on_button_2_pressed():
	get_tree().quit()


func _physics_process(_delta):
	if ConfigLanguage.localization == 1:
		$Control/Button.text = "Continue"
		$Control/Button2.text = "Quit"
		$Control/Label.text = "You died("
	if ConfigLanguage.localization == 0:
		$Control/Button.text = "Продолжить"
		$Control/Button2.text = "Выйти"
		$Control/Label.text = "Ты умер("


func _on_audio_stream_player_2d_finished():
	$Control/AudioStreamPlayer2D.play()
