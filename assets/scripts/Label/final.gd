extends Label


func _ready():
	if ConfigLanguage.localization == 1:
		text = "Final"
	if ConfigLanguage.localization == 0:
		text = "Финал"
