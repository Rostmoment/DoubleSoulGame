extends CharacterBody2D

var speed = 100
var damage = null

var SPEED: float = 180.0
var JUMP_VELOCITY: float = -330.0
var floor_: bool = false

var gravity: int = 980

func _ready():
	$AnimationPlayer.play("ready")

func _process(delta):
	if $Timer.time_left == 0:
		if !damage == null:
			hit()
			$Timer.start()
	if ConfigLanguage.dialog_reading == 0:
		speed = 100
	if ConfigLanguage.dialog_reading == 1:
		speed = 0
	if ConfigLanguage.mode == 0:
		velocity = Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down")) * speed
		move_and_slide()
	if ConfigLanguage.mode == 1:
		if !is_on_floor():
			velocity.y += gravity * delta
		if Input.is_action_pressed("jump"):
			if is_on_floor() == true:
				velocity.y = JUMP_VELOCITY
		if Input.is_action_pressed("jump"):
			if floor_ == true:
				velocity.y = -200
		var direction = Input.get_axis("left", "right")
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		move_and_slide()

func hit():
	if ConfigLanguage.glin_hp >= -1:
		ConfigLanguage.glin_hp -= 10
		$Hit.play()

func _on_hit_box_area_entered(area):
	damage = area


func _on_hit_box_area_exited(area):
	if area == damage:
		damage = null
