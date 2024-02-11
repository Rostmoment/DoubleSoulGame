extends AudioStreamPlayer2D

func _ready():
	if ConfigLanguage.music == 1:
		play()

func _on_finished():
	play()
