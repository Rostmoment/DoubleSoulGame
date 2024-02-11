extends Path2D


@export var loop := true
@export var speed := 100.0
@export var timer := 1.0

func _ready():
	$PathFollow2D.loop = loop
	$Timer.wait_time = timer
	
func  _ready2():
	if $Timer.time_left == 0:
		print("xxxxxxxxx")
		loop = true

func _physics_process(delta):
	$PathFollow2D.progress += speed * delta
