extends Area2D

@export var speed_x := 0
@export var speed_y := 0
var pos = Vector2()

func _physics_process(delta):
	pos.x = speed_x * delta
	pos.y = speed_y * delta
	translate(pos)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	
func _on_button_pressed():
	queue_free()
	ConfigLanguage.hp_boss2 -= randi_range(25, 100)
	
