extends Area2D

func _physics_process(_delta):
	$CPUParticles2D.position.y = randf_range(70.0, 104.0)
	
func _ready():
	$AnimationPlayer.play("ready")
	await get_tree().create_timer(3.5).timeout
	queue_free()
