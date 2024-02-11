extends CharacterBody2D

var speed = 100

func _process(_delta):
	if ConfigLanguage.dialog_reading == 0:
		speed = 100
	if ConfigLanguage.dialog_reading == 1:
		speed = 0
	if Input.is_action_just_pressed("exit"):
		get_tree().paused = true
		$CanvasLayer.visible = true
	if ConfigLanguage.checkpoint_r3 == 1:
		if Input.is_action_pressed("shift"):
			speed = 50
		else:
			speed = 100
	if ConfigLanguage.checkpoint_r3 == 2:
		if  Input.is_action_pressed("ctrl"):
			speed = 150
		else:
			speed = 100
	if ConfigLanguage.boss_fight == false:
		if !$AudioStreamPlayer2D.playing:
			if ConfigLanguage.music == 1:
				$AudioStreamPlayer2D.play()
	
	velocity = Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down")) * speed
	move_and_slide()


func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("enter"):
		var _action = $Checker.get_overlapping_areas()
		if _action.size() > 0:
			_action[0].action()
			return


func _on_area_2d_body_entered(_body):
	if ConfigLanguage.checkpoint_r3 == 0:
		self.position.x = 48
		self.position.y = 60
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r3 == 1:
		self.position.x = 46
		self.position.y = -631
		ConfigLanguage.death += 1
	if ConfigLanguage.checkpoint_r3 == 2:
		self.position.x = 768
		self.position.y = -1095
		ConfigLanguage.death += 1


func _on_checker_2_area_entered(_area):
	var _action = $Checker2.get_overlapping_areas()
	if _action.size() > 0:
		_action[0].action()
