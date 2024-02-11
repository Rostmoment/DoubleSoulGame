extends Node2D

var fight = null
@export var ui: CanvasLayer
const atk_fig = preload("res://assets/boss/secretbossatk.tscn")

func fail():
	get_tree().reload_current_scene()
	fight.queue_free()
	ConfigLanguage.hp_boss2 = 1000
	ConfigLanguage.death += 1
func _physics_process(delta):
	$BossSecret/AnimationPlayer.play("fight2")
	$HpBoss.hp_bar_set()
	if ConfigLanguage.hp_boss2 <= 1000:
		$AtkTimer.wait_time = 1.0
	if ConfigLanguage.hp_boss2 <= 900:
		$AtkTimer.wait_time = 0.9
	if ConfigLanguage.hp_boss2 <= 800:
		$AtkTimer.wait_time = 0.8
	if ConfigLanguage.hp_boss2 <= 700:
		$AtkTimer.wait_time = 0.7
	if ConfigLanguage.hp_boss2 <= 600:
		$AtkTimer.wait_time = 0.6
	if ConfigLanguage.hp_boss2 <= 500:
		$AtkTimer.wait_time = 0.5
	if ConfigLanguage.hp_boss2 <= 400:
		$AtkTimer.wait_time = 0.4
	if ConfigLanguage.hp_boss2 <= 300:
		$AtkTimer.wait_time = 0.3
	if ConfigLanguage.hp_boss2 <= 200:
		$AtkTimer.wait_time = 0.2
	if ConfigLanguage.hp_boss2 <= 100:
		$AtkTimer.wait_time = 0.1
	if ConfigLanguage.hp_boss2 <= 50:
		$AtkTimer.wait_time = 0.01
	if ConfigLanguage.hp_boss2 <= 10:
		$AtkTimer.wait_time = 0.001
	if ConfigLanguage.hp_boss2 <= 0:
		ConfigLanguage.bad_final = true
		ConfigLanguage.game_save()
		get_tree().quit()
	
func _ready():
	atk()


func _on_area_2d_body_entered(body):
	fail()
	
func atk():
	$AtkTimer.start()
	
func _on_atk_timer_timeout():
	fight = atk_fig.instantiate()
	fight.position = $BossSecret/PosAtk.global_position
	get_tree().current_scene.add_child(fight)
	atk()


func _on_music_finished():
	$Music.play()

