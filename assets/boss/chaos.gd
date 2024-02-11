extends Path2D


@export var loop := true
@export var speed := 100.0
@export var speed_turn := 1

func _ready():
	$PathFollow2D.loop = loop



func _physics_process(delta):
	$PathFollow2D.progress += speed * delta
	$AnimatableBody2D.rotation += speed_turn * delta
	

