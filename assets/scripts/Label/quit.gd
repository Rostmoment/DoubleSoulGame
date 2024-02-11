extends Label


func _ready():
	if ConfigLanguage.localization == 1:
		text = "Quit"
	if ConfigLanguage.localization == 0:
		text = "Выйти"
