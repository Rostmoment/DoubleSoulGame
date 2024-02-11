extends Label

func _physics_process(_delta):
	if ConfigLanguage.localization == 0:
		text = "Смертей: " + str(ConfigLanguage.death)
	if ConfigLanguage.localization == 1:
		text = "Deaths: " + str(ConfigLanguage.death)
