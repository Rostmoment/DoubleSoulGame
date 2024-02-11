extends Label


func _ready():
	if ConfigLanguage.localization == 1:
		text = "Language"
	if ConfigLanguage.localization == 0:
		text = "Язык"
