extends CharacterBody2D


var SPEED: float = 180.0
var JUMP_VELOCITY: float = -300.0
var floor_: bool = false
var mode_2: bool = false

var gravity: float = 980.0



func fail():
	mode_2 = false
	gravity = 980.0
	JUMP_VELOCITY = -300.0
	$"../DeathCount".visible = false
	$"../Music".playing = false
	$"../Fail/Control/AudioStreamPlayer2D".play()
	ConfigLanguage.death += 1
	$"../Fail".visible = true
	get_tree().paused = true
	position = Vector2(208, -22)
	
	


func _physics_process(delta):
	if ConfigLanguage.dialog_reading == 0 or mode_2 == false:
		SPEED = 180.0
		JUMP_VELOCITY = -300.0
		gravity = 980
	if ConfigLanguage.dialog_reading == 1:
		SPEED = 0.0
		JUMP_VELOCITY = 0.0
	if mode_2 == true:
		gravity = 200
		JUMP_VELOCITY = -50
		
		
		
		
	if !is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump"):
		if is_on_floor() or mode_2 == true:
			velocity.y = JUMP_VELOCITY
	if Input.is_action_pressed("jump"):
		if floor_ == true:
			velocity.y = JUMP_VELOCITY
			
	if ConfigLanguage.boss_fight == false:
		if !$AudioStreamPlayer2D.playing:
			if ConfigLanguage.music == 1:
				$AudioStreamPlayer2D.play()
		
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	if Input.is_action_just_pressed("exit"):
		get_tree().paused = true
		$CanvasLayer.visible = true


func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("enter"):
		var _action = $Checker.get_overlapping_areas()
		if _action.size() > 0:
			_action[0].action()
			return
