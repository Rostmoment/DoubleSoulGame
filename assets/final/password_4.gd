extends Node2D

func  _ready():
	print(ConfigLanguage.final)

func _on_chouse_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_2_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_3_body_entered(body):
	ConfigLanguage.final += 1
	if ConfigLanguage.final == 4:
		get_tree().change_scene_to_file("res://assets/final/boss_fight.tscn")
	else:
		get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")

func _on_chouse_4_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_5_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_6_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_7_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_8_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_9_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")


func _on_chouse_0_body_entered(body):
	get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")
