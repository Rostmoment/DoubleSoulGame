extends CharacterBody2D


var speed = 100

func _process(_delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().paused = true
		$"../CanvasLayer".visible = true
	if Input.is_action_pressed("shift"):
		speed = 50
	if  Input.is_action_pressed("ctrl"):
		speed = 150
	else:
		speed = 100
	velocity = Vector2(Input.get_axis("left", "right"), Input.get_axis("up", "down")) * speed
	move_and_slide()
