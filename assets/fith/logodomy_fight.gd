extends Control

var fight1 = null
var atack = null
var go = 0
var game_over = preload("res://assets/fith/game_over.tscn").instantiate()
var dialog_ = preload("res://assets/dialogs/balloon_2.tscn")
var end = load("res://assets/dialogs/end.dialogue")
var en_end = load("res://assets/dialogs/end.dialogue")
var flash = preload("res://assets/fith/no_name.tscn").instantiate()
var fight2 = null


func _physics_process(_delta):
	if ConfigLanguage.final_100proc == 1:
		ConfigLanguage.final_100proc = 0
		await get_tree().create_timer(0.5).timeout
		fight2.get_node("Anim").play("final")
		ConfigLanguage.mode = 1
	if ConfigLanguage.stad_2 == 1:
		ConfigLanguage.stad_2 = 0
		await get_tree().create_timer(0.5).timeout
		fight2 = preload("res://assets/fith/fight2.tscn").instantiate()
		get_parent().add_child(fight2)
		fight2.position = get_tree().current_scene.get_node("Arena").position
		get_parent().add_child(flash)
		flash.get_node("Animat").play("glin")
		await get_tree().create_timer(6.0).timeout
		if ConfigLanguage.localization == 0:
			$Button/NAME.text = "ГЛИН ПАМД"
		if ConfigLanguage.localization == 1:
			$Button/NAME.text = "GLIN PUMD"
		fight2.soul.get_node("Sprite2D").texture = load("res://assets/textures/glinpumd.png")
		$Button/HpBar.max_value = 2036
		$Button/LVL.text = "LVL 69"
		ConfigLanguage.glin_hp = 2036
		flash.get_node("Animat").play("glin_pumd")
		await get_tree().create_timer(3.0).timeout
		var dialog = dialog_.instantiate()
		get_tree().current_scene.add_child(dialog)
		if ConfigLanguage.localization == 0:
			dialog.start(end, "last_dialog")
		if ConfigLanguage.localization == 1:
			dialog.start(en_end, "last_dialog")
		
		
	if ConfigLanguage.glin_hp <= 0 and !go == 1:
		go = 1
		ConfigLanguage.glin_hp = 0
		get_tree().current_scene.get_node("AudioStreamPlayer").playing = false
		get_tree().current_scene.add_child(game_over)
	if ConfigLanguage.miss == 1:
		ConfigLanguage.miss = 0
		await get_tree().create_timer(1.0).timeout
		fight()
	if ConfigLanguage.atk_fith == 1:
		ConfigLanguage.atk_fith = 0
		await get_tree().create_timer(1.0).timeout
		fight()
		
func _ready():
	get_tree().paused = true
	ConfigLanguage.no_press = 0
	ConfigLanguage.glin_hp = 100
	ConfigLanguage.end_hp_boss = 15
	ConfigLanguage.miss = 0
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	if ConfigLanguage.localization == 0:
		dialog.start(end, "start")
	if ConfigLanguage.localization == 1:
		dialog.start(en_end, "start")
	
func _on_fight_pressed():
	button()
	atack = preload("res://assets/fith/atack.tscn").instantiate()
	get_parent().add_child(atack)
	atack.position = $Arena.position
	
func _on_heal_pressed():
	get_tree().paused = false
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	if ConfigLanguage.localization == 0:
		dialog.start(end, "heal")
	if ConfigLanguage.localization == 1:
		dialog.start(en_end, "heal")
func _on_quit_pressed():
	get_tree().paused = false
	var dialog = dialog_.instantiate()
	get_tree().current_scene.add_child(dialog)
	if ConfigLanguage.localization == 0:
		dialog.start(end, "quit")
	if ConfigLanguage.localization == 1:
		dialog.start(en_end, "quit")

func fight():
	fight1 = preload("res://assets/fith/fight1.tscn").instantiate()
	get_parent().add_child(fight1)
	fight1.position = $Arena.position
	await get_tree().create_timer(10.0).timeout
	fight1.get_node("Anim").play("delete")
	$Button/AnimationPlayer.play("idle")
	
func button():
	get_tree().paused = false
	$Button/AnimationPlayer.play("fight")

func _on_fight_2_pressed():
	button()
	fight1.get_node("Anim").play("delete")


func _on_next_body_entered(_body):
	flash.get_node("Animat").play("black")
	await get_tree().create_timer(3.0).timeout
	ConfigLanguage.true_final = 83929
	get_tree().change_scene_to_file("res://assets/fith/final_boss.tscn")
	fight2.queue_free()


func _on_stats_pressed():
	ConfigLanguage.no_press += 1
	if !ConfigLanguage.no_press == 8:
		get_tree().paused = false
		var dialog = dialog_.instantiate()
		get_tree().current_scene.add_child(dialog)
		if ConfigLanguage.localization == 0:
			dialog.start(end, "no_press")
		if ConfigLanguage.localization == 1:
			dialog.start(en_end, "no_press")
	if ConfigLanguage.no_press == 8:
		$Button/SecretButton.play("walk")
