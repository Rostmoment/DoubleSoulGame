extends Area2D

@export var dialog_res : DialogueResource
@export var en_dialog_res : DialogueResource
@export var dialog_name : String = ""

const balloon_ = preload("res://assets/dialogs/balloon.tscn")


func action() -> void:
	var balloon: Node = balloon_.instantiate()
	ConfigLanguage.dialog_reading = 1
	get_tree().current_scene.add_child(balloon)
	if ConfigLanguage.localization == 0:
		balloon.start(dialog_res, dialog_name)
	if ConfigLanguage.localization == 1:
		balloon.start(en_dialog_res, dialog_name)
	queue_free()
