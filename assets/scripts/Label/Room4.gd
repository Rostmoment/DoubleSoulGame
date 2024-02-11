extends Label

func _ready():
	if ConfigLanguage.room4_finish == 0:
		pass
	if ConfigLanguage.room4_finish == 1:
		if ConfigLanguage.localization == 1:
			text = "Room 4"
		if ConfigLanguage.localization == 0:
			text = "Комната 4"
			
			
func _physics_process(_delta):
	if ConfigLanguage.room4_finish == 0:
		$"../StaticBody2D".visible = false
		$"../Pisun4".visible = true
	if ConfigLanguage.room4_finish == 1:
		$"../StaticBody2D".visible = true
		$"../StaticBody2D".position = Vector2(1088, 496)
		$"../Pisun4".visible = false
