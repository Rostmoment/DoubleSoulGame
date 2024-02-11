extends Area2D

func _ready():
	get_node("Sprite2D").flip_h = true

func _on_body_entered(body):
	body.position = Vector2(1357, -523)
	
