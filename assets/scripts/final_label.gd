extends Area2D


@export var text_lb := 1

func _ready():
	$CollisionShape2D/Label.text = text_lb
