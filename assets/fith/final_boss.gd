extends Node2D

var break_:int = 0
var hp:bool = false
var dialog = load("res://assets/dialogs/trueend.dialogue")
var logodomy = preload("res://assets/fith/final_fith.tscn").instantiate()
func _physics_process(_delta):
	if get_tree().paused == true:
		$HPBOSS.visible = false
	if get_tree().paused == false and hp == true:
		$HPBOSS.visible = true
		ConfigLanguage.dialog_reading = 1
	$CanvasLayer/Button/HpBar.value = ConfigLanguage.glin_hp
	$CanvasLayer/Button/HP.text = "HP " + str(ConfigLanguage.glin_hp) + "/" + str($CanvasLayer/Button/HpBar.max_value)
	if !$CharacterBody2D.is_on_floor():
		break_ = 1
		if Input.is_action_pressed("left"):
			$CharacterBody2D/Sprite2D.rotation -= 0.1
		else:
			$CharacterBody2D/Sprite2D.rotation += 0.1
	if $CharacterBody2D.is_on_floor():
		break_ = 0
		$CharacterBody2D/Sprite2D.rotation_degrees = snapped($CharacterBody2D/Sprite2D.rotation_degrees, 90)
func _ready():
	ConfigLanguage.dialog_reading = 0
	if ConfigLanguage.localization == 0:
		$CanvasLayer/Button/NAME.text = "ГЛИН ПАМД"
		$HPBOSS/Control/Label2.text = "СЛИШКОМ МНОГО/СЛИШКОМ МНОГО"
	if ConfigLanguage.localization == 1:
		$CanvasLayer/Button/NAME.text = "GLIN PUMD"
		$HPBOSS/Control/Label2.text = "TOO MUCH MANY/TOO MUCH MANY"
	$CanvasLayer/Button/HpBar.max_value = 2036
	$CanvasLayer/Button/LVL.text = "LVL 69"
	ConfigLanguage.glin_hp = 2036
	$CanvasLayer/Button/AnimationPlayer.play("fight")
	$CharacterBody2D/Camera2D.position_smoothing_enabled = true
	$CharacterBody2D/Camera2D.position_smoothing_speed = 9.0
	$CharacterBody2D/Camera2D.rotation_smoothing_enabled = true
	$CharacterBody2D/Camera2D.rotation_smoothing_speed = 9.0
	$CharacterBody2D/Camera2D.zoom = Vector2(3.2, 3.2)
	$CharacterBody2D/Sprite2D.texture = load("res://assets/textures/glinpumd.png")
func _on_break_tile_body_entered(_body):
	if break_ == 1:
		$BreakTile/AnimationPlayer.play("break")
func _on_break_tile_2_body_entered(_body):
	$AudioStreamPlayer.stop()
	$BreakTile2.collision_mask = 0
	ConfigLanguage.dialog_reading = 1
	await get_tree().create_timer(0.3).timeout
	$BreakTile2/AnimationPlayer.play("break")
	await get_tree().create_timer(11.0).timeout
	$CharacterBody2D/AnimationPlayer.play("camera")
	await get_tree().create_timer(1.5).timeout
	get_tree().current_scene.add_child(logodomy)
	logodomy.position = $Marker2D.position
	hp = true
	await get_tree().create_timer(3.0).timeout
	var dialog_ = preload("res://assets/dialogs/balloon_2.tscn").instantiate()
	get_tree().current_scene.add_child(dialog_)
	dialog_.start(dialog, "a")
func _on_fall_body_entered(_body):
	get_tree().reload_current_scene()
func end():
	$TileMap.queue_free()
	$BreakTile2.queue_free()
	$Fall.queue_free()
	$Black.play("black")
	#hp = false
	logodomy.get_node("AnimationPlayer").play("music")
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://assets/titles/titles.tscn")
