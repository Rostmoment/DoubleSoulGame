extends Label

func _ready():
	if ConfigLanguage.room2_finish == 0:
		pass
	if ConfigLanguage.room2_finish == 1:
		if ConfigLanguage.localization == 1:
			text = "Room 2"
		if ConfigLanguage.localization == 0:
			text = "Комната 2"
