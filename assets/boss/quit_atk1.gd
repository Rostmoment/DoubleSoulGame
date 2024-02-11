extends Path2D


@export var loop := true
@export var speed := 100
@export var speed_turn := 0

func _ready():
	$PathFollow2D.loop = loop


func _physics_process(delta):
	$PathFollow2D.progress += speed * delta
	$Quit/CollisionShape2D.rotation += speed_turn * delta
	$Timer.start()

func _on_timer_timeout(delta):
	$Quit/CollisionShape2D.rotation += speed_turn * delta
	$Timer.start()
