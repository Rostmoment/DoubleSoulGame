extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	if ConfigLanguage.localization == 1:
		text = "Fight"
	if ConfigLanguage.localization == 0:
		text = "Битва"
