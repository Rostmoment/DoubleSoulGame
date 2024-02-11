extends Path2D


@export var loop := true
var speed := randi_range(300, 500)

func _ready():
	$PathFollow2D.loop = loop


func _physics_process(delta):
	$PathFollow2D.progress += speed * delta
