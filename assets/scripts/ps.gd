extends Label
func _ready():
	if ButtonR2.buttonr2 == 0:
		if ConfigLanguage.localization == 1:
			text = "Check your work"
		if ConfigLanguage.localization == 0:
			text = "Проверяй свою работу"
	else:
		text = "5"
