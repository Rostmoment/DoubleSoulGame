extends Label

func _ready():
	if ConfigLanguage.room1_finish == 0:
		pass
	if ConfigLanguage.room1_finish == 1:
		if ConfigLanguage.localization == 1:
			text = "Room 1"
		if ConfigLanguage.localization == 0:
			text = "Комната 1"
