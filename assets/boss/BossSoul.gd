extends Node2D


const quit = preload("res://assets/boss/quit_boss.tscn")

@export var ui: CanvasLayer

func _ready():
	ConfigLanguage.boss_fight = true
	get_node("CharacterBody2D/AudioStreamPlayer2D").queue_free()
	__ready()
	
func __ready():
	$BossSoul/AnimatedSprite2D.play("idle")
	$BossSoul/MoveBoss.play("new_animation")
	$BossSoul/TimerAtk.start()
	
	
func _physics_process(delta):
	ui.set_value()
	if ConfigLanguage.hp_boss <= 0:
		get_tree().change_scene_to_file("res://assets/final/windows_error.tscn")
	if ConfigLanguage.hp_boss <= 750:
		$BossSoul/TimerAtk.wait_time = randf_range(0.8, 0.7)
		$BossSoul/TimerMove.wait_time = randf_range(0.8, 0.7)
	if ConfigLanguage.hp_boss <= 500:
		$BossSoul/TimerAtk.wait_time = randf_range(0.6, 0.4)
		$BossSoul/TimerMove.wait_time = randf_range(0.6, 0.4)
	if ConfigLanguage.hp_boss <= 100:
		$BossSoul/TimerAtk.wait_time = randf_range(0.3, 0.2)
		$BossSoul/TimerMove.wait_time = randf_range(0.3, 0.2)
	
func _on_timer_atk_timeout():
	$BossSoul/AnimatedSprite2D.play("atk")
	$BossSoul/MoveBoss.pause()
	var quiT = quit.instantiate()
	quiT.position = $BossSoul/Pos.global_position
	get_parent().add_child(quiT)
	$BossSoul/TimerMove.start()

func _on_timer_move_timeout():
	__ready()
