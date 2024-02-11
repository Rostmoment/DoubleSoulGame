extends Control
var ready__ = 0
func _physics_process(delta):
	if ConfigLanguage.key_tit == 2 and !ready__ == 1:
		ready__ = 1
		_show()
		await get_tree().create_timer(2.0).timeout
		_hide()
		title5()
func anim_label():
	var label_anim = randi_range(0, 4)
	if label_anim == 0:
		$AnimationPlayer.play("label")
	if label_anim == 1:
		$AnimationPlayer.play("label1")
	if label_anim == 2:
		$AnimationPlayer.play("label2")
	if label_anim == 3:
		$AnimationPlayer.play("label3")
	if label_anim == 4:
		$AnimationPlayer.play("label4")
func _ready():
	$CanvasLayer/Label.position.y = 216
	$AudioStreamPlayer/AnimationPlayer.play("start")
	$CanvasLayer/ColorRect2/AnimationPlayer.play("hide")
	anim_label()
	$CanvasLayer/Label.text = "DoubleSoulGame"
func _show():
	$CanvasLayer/ColorRect2/AnimationPlayer.play("show")
func _hide():
	$CanvasLayer/ColorRect2/AnimationPlayer.play("hide")
#1 плей
func _on_area_2d_body_entered(body):
	body.mode_1 = true
	await get_tree().create_timer(0.7).timeout
	$SoulTitles.velocity.x -= 100
func _on_play_body_entered(body):
	_show()
	body.velocity = Vector2(0,0)
	_button()
#2 кнопка
func _button():
	await get_tree().create_timer(2.0).timeout
	$AnimLocation.play("2")
	await get_tree().create_timer(0.7).timeout
	$SoulTitles.position.x = 904
	$CanvasLayer/Label.text = "Придумал\nи сделал:\n\n???"
	_hide()
	anim_label()
	await get_tree().create_timer(2.0).timeout
	$SoulTitles.velocity.x -= 100
func _on_fake_button_body_entered(body):
	_show()
	body.velocity = Vector2(0,0)
	title3()
#3 паркур
func title3():
	await get_tree().create_timer(2.0).timeout
	anim_label()
	$CanvasLayer/Label.text = "Воровал музыку\nи текстуры:\n\n???"
	$SoulTitles.position = Vector2(906, 329)
	$SoulTitles.mode_1 = false
	$AnimLocation.play("3")
	_hide()
#4 3 комната
#5  красный кубик стоит, а потом атакует выходом и превращается в каку
func title5():
	anim_label()
	$CanvasLayer/Label.text = "Геймдизайнер:\n\n???"
	$AnimLocation.play("5")
#6 лоботоми пояляется,глин атакует, желтый, глин меняется и логодоит тоже, а потом появляються а и в
func title6():
	_show()
	await get_tree().create_timer(2.0).timeout
	_hide()
	anim_label()
	$CanvasLayer/Label.text = "Продвигал:\n\n???"
	$AnimLocation.play("6", -1, 0.5)
#7 финал
func end():
	$CanvasLayer/ColorRect2/AnimationPlayer.play("show", -1, 0.3)
	$AudioStreamPlayer/AnimationPlayer.play("end")
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://assets/titles/final_dialog.tscn")

