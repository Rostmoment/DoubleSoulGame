extends CharacterBody2D

var gravity: float = 980.0
var JUMP_VELOCITY: float = -300.0
var mode_1 = false
func _physics_process(delta):
	if mode_1 == false:
		if !is_on_floor():
			velocity.y += gravity * delta
	if mode_1 == true:
		if !is_on_floor():
			velocity.y = 0
	move_and_slide()
func jump():
	velocity.y = JUMP_VELOCITY
	move_and_slide()
	
func _glin():
	$AnimationPlayer.play("glin_pumd")
