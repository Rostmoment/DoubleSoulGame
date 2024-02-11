extends Control

var press:int = 1

func _physics_process(_delta):
	if press == 0 and $CanvasLayer/Timer.time_left == 0:
		$CanvasLayer/QUIT.position.x = randf_range(0.0, 988.0)
		$CanvasLayer/QUIT.position.y = randf_range(0.0, 600.0)
		$CanvasLayer/Timer.start()


func _ready():
	$CanvasLayer/AnimationGO.play("GO")
	await get_tree().create_timer(3.0).timeout
	$CanvasLayer/AnimationGO.play("cont")
	await get_tree().create_timer(0.5).timeout
	$CanvasLayer/AnimationGO.play("quit")
	
func _quit():
	press = 0

func _on_quit_pressed():
	press = 1
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()

func cont():
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()


func _on_continue_pressed():
	$CanvasLayer/ColorRect2.visible = true
	$CanvasLayer/AnimationGO.play("cont_press")
