extends Node2D


func fail():
	queue_free()
	get_tree().reload_current_scene()
	ConfigLanguage.hp_boss2 = 1000
	ConfigLanguage.death += 1
	
func _on_fight_body_entered(body):
	fail()

func _physics_process(delta):
	var rot = randi_range(0, 50)
	if rot <= 20:
		rotation += 1 * delta
	if rot >= 20:
		rotation -= 1 * delta
	if rot >= 40:
		rotation -= 0 * delta
