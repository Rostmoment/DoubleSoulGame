extends Node

var config
var save_game := "user://save.cfg"
var _config := "config"

var localization = 1
var room1_finish = 0
var room2_finish = 0
var room3_finish = 0
var room4_finish = 0
var key_inv = 0
var checkpoint_r2 = 0
var checkpoint_r3 = 0
var death = 0
var final = 0 
var button_fight = 0
var hp_boss = 1000
var hp_boss2 = 1000
var dialog_reading = 0
var room1_death = 0
var soul_dialog_finish = 0
var table = 0
var music = 0
var genocid = 0
var bad_final = false
var boss_fight = false
var soul_final_dialog = 0
var true_final = 0
var dialog_end = 0
var end_hp_boss = 15
var glin_hp = 100
var miss = 0
var diakog_end2 = 0
var atk_fith = 0
var mode = 0
var stad_2 = 0
var final_100proc = 0
var title = false
var no_press = 0
var key_tit = 0


func _physics_process(_delta):
	game_save()
func __genocid():
	if ConfigLanguage.genocid == 1:
		get_tree().change_scene_to_file("res://assets/boss/secret_boss_fight.tscn")
	if ConfigLanguage.bad_final == true:
		get_tree().change_scene_to_file("res://assets/fith/main_screen.tscn")
	if true_final == 986537:
		get_tree().change_scene_to_file("res://assets/fith/room_2.tscn")
	if true_final == 538719:
		get_tree().change_scene_to_file("res://assets/fith/logodomy_fight.tscn")
	if true_final == 83929:
		get_tree().change_scene_to_file("res://assets/fith/final_boss.tscn")
		
func _ready():
	game_load()
	__genocid()


func game_save() -> void:
	config = ConfigFile.new()
	config.set_value(_config, "lc_con", localization)
	config.set_value(_config, "death", death)
	config.set_value(_config, "room1", room1_finish)
	config.set_value(_config, "room2", room2_finish)
	config.set_value(_config, "room3", room3_finish)
	config.set_value(_config, "room4", room4_finish)
	config.set_value(_config, "genocid", bad_final)
	config.set_value(_config, "genocid1", genocid)
	config.set_value(_config, "music", music)
	config.set_value(_config, "logodomy", true_final)
	config.save(save_game)
	
func game_load() -> void:
	config = ConfigFile.new()
	config.load(save_game)
	localization = config.get_value(_config, "lc_con", localization)
	death = config.get_value(_config, "death", death)
	room1_finish = config.get_value(_config, "room1", room1_finish)
	room2_finish = config.get_value(_config, "room2", room2_finish)
	room3_finish = config.get_value(_config, "room3", room3_finish)
	room4_finish = config.get_value(_config, "room4", room4_finish)
	bad_final = config.get_value(_config, "genocid", bad_final)
	genocid = config.get_value(_config, "genocid1", genocid)
	music = config.get_value(_config, "music", music)
	true_final = config.get_value(_config, "logodomy", true_final)


func first_venya_talk():
	get_tree().current_scene.get_node("AnimationV").play("venya")
	await get_tree().create_timer(0.5).timeout
	get_tree().current_scene.get_node("AnimationV").play("venya_talk")
func venya_talk():
	await get_tree().create_timer(0.2).timeout
	get_tree().current_scene.get_node("AnimationV").play("venya_talk")
	await get_tree().create_timer(0.2).timeout
func venya_notalk():
	await get_tree().create_timer(0.2).timeout
	get_tree().current_scene.get_node("AnimationV").play("venya_notalk")
	await get_tree().create_timer(0.2).timeout
func venya_last():
	get_tree().current_scene.get_node("AnimationV").play("venya_notalk")
	await get_tree().create_timer(0.1).timeout
	get_tree().current_scene.get_node("AnimationV").play("leave_venya")
func first_artem_talk():
	get_tree().current_scene.get_node("AnimationA").play("artem")
	await get_tree().create_timer(0.5).timeout
	get_tree().current_scene.get_node("AnimationA").play("artem_talk")
func artem_talk():
	await get_tree().create_timer(0.2).timeout
	get_tree().current_scene.get_node("AnimationA").play("artem_talk")
	await get_tree().create_timer(0.2).timeout
func artem_notalk():
	await get_tree().create_timer(0.2).timeout
	get_tree().current_scene.get_node("AnimationA").play("artem_notalk")
	await get_tree().create_timer(0.2).timeout
func artem_last():
	get_tree().current_scene.get_node("AnimationA").play("artem_notalk")
	await get_tree().create_timer(0.1).timeout
	get_tree().current_scene.get_node("AnimationA").play("leave_artem")
	await get_tree().create_timer(1.5).timeout
