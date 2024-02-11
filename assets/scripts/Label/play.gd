extends Label


func _ready():
	if ConfigLanguage.localization == 1:
		text = "Play"
	if ConfigLanguage.localization == 0:
		text = "Играть"
