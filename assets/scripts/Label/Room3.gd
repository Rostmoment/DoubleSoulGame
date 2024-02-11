extends Label

func _ready():
	if ConfigLanguage.room3_finish == 0:
		pass
	if ConfigLanguage.room3_finish == 1:
		if ConfigLanguage.localization == 1:
			text = "Room 3"
		if ConfigLanguage.localization == 0:
			text = "Комната 3"
