extends Node2D

func  _ready():
	ConfigLanguage.final = 0
	print(ConfigLanguage.final)
	
func _physics_process(delta):
	if ConfigLanguage.room1_finish == 0 or ConfigLanguage.room2_finish == 0 or ConfigLanguage.room3_finish == 0 or ConfigLanguage.room4_finish == 0:
		get_tree().change_scene_to_file("res://assets/scenes/room_1.tscn")
		
		
func _on_chouse_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_2_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_3_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_4_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_5_body_entered(body):
	ConfigLanguage.final += 1
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_6_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_7_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_8_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_9_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")


func _on_chouse_0_body_entered(body):
	get_tree().change_scene_to_file("res://assets/final/password_2.tscn")
