extends Node2D

var pos_1 = -1120
var pos_2 = -2120
#$Quit.queue_free()

var hp_boss = 50


	
func fight_button():
	if ConfigLanguage.button_fight == 1:
		button_ft()
		$Quit.position.y -= pos_1
		$Quit.speed = 100
		get_node("Quit/PathFollow2D").loop = true
	if ConfigLanguage.button_fight == 2:
		button_ft()
		get_node("Quit2/PathFollow2D").loop = true
		$Quit2.position.y -= pos_1
		$Quit2.speed = 100
	if ConfigLanguage.button_fight == 3:
		button_ft()
		get_node("Quit3/PathFollow2D").loop = true
		$Quit3.position.y -= pos_1
	if ConfigLanguage.button_fight == 4:
		button_ft()
		get_node("Quit4/PathFollow2D").loop = true
		$Quit4.position.y -= pos_1
	if ConfigLanguage.button_fight == 5:
		button_ft()
		get_node("Quit5/PathFollow2D").loop = true
		$Quit5.position.y -= pos_1
	if ConfigLanguage.button_fight == 6:
		button_ft()
		get_node("Quit6/PathFollow2D").loop = true
		$Quit6.position.y -= pos_1
	if ConfigLanguage.button_fight == 7:
		button_ft()
		get_node("Quit7/PathFollow2D").loop = true
		$Quit7.position.y -= pos_1
	if ConfigLanguage.button_fight == 8:
		button_ft()
		get_node("Quit8/PathFollow2D").loop = true
		$Quit8.position.y -= pos_1
	if ConfigLanguage.button_fight == 9:
		button_ft()
		get_node("Quit9/PathFollow2D").loop = true
		$Quit9.position.y -= pos_1
	if ConfigLanguage.button_fight == 10:
		button_ft()
		get_node("Quit10/PathFollow2D").loop = true
		$Quit10.position.y -= pos_1
	if ConfigLanguage.button_fight == 11:
		button_ft()
		$Block.position.y -= pos_1
		$Block.speed = randi_range(3, 6)
		get_node("Block/PathFollow2D").loop = true
	if ConfigLanguage.button_fight == 12:
		button_ft()
		$Block1.position.y -= pos_1
		$Block1.speed = randi_range(3, 6)
		get_node("Block1/PathFollow2D").loop = true
	if ConfigLanguage.button_fight == 13:
		button_ft()
	if ConfigLanguage.button_fight == 14:
		button_ft()
		get_node("Quit7/PathFollow2D").loop = false
		get_node("Quit8/PathFollow2D").loop = false
		get_node("Quit9/PathFollow2D").loop = false
		get_node("Quit10/PathFollow2D").loop = false
	if ConfigLanguage.button_fight == 15:
		button_ft()
	if ConfigLanguage.button_fight == 16:
		button_ft()
		$Block2.position.y -= pos_1
		$Block2.speed = randi_range(3, 5)
		get_node("Block2/PathFollow2D").loop = true
	if ConfigLanguage.button_fight == 17:
		button_ft()
	if ConfigLanguage.button_fight == 18:
		button_ft()
	if ConfigLanguage.button_fight == 19:
		button_ft()
	if ConfigLanguage.button_fight == 20:
		button_ft()
		get_node("Block2/PathFollow2D").loop = false
	if ConfigLanguage.button_fight == 21:
		button_ft()
	if ConfigLanguage.button_fight == 22:
		button_ft()
		$Block3.position.y -= pos_1
		$Block3.speed = randi_range(3, 5)
		get_node("Block3/PathFollow2D").loop = true
	if ConfigLanguage.button_fight == 23:
		button_ft()
	if ConfigLanguage.button_fight == 24:
		button_ft()
	if ConfigLanguage.button_fight == 25:
		button_ft()
		get_node("Quit/PathFollow2D").loop = false
		get_node("Quit2/PathFollow2D").loop = false
		get_node("Quit3/PathFollow2D").loop = false
		get_node("Quit4/PathFollow2D").loop = false
		get_node("Quit5/PathFollow2D").loop = false
		get_node("Quit6/PathFollow2D").loop = false
		$Quit7.queue_free()
		$Quit8.queue_free()
		$Quit9.queue_free()
		$Quit10.queue_free()
		get_node("Block/PathFollow2D").loop = false
		get_node("Block1/PathFollow2D").loop = false
		get_node("Block3/PathFollow2D").loop = false
	if ConfigLanguage.button_fight == 26:
		button_ft()
		$Stad2.start()
	if ConfigLanguage.button_fight == 27:
		button_ft2()
		stad2_quit()
		$Block.queue_free()
		$Block1.queue_free()
		$Block2.queue_free()
		$Block3.queue_free()
	if ConfigLanguage.button_fight == 28:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 29:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 30:
		button_ft2()
		$Camera2D.zoom.x = -1.8
		$Camera2D.zoom.y = -1.8
		stad2_quit()
	if ConfigLanguage.button_fight == 31:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 32:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 33:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 34:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 35:
		button_ft2()
		$Camera2D.zoom.x = 1.8
		$Camera2D.zoom.y = 1.8
		stad2_quit()
	if ConfigLanguage.button_fight == 36:
		button_ft2()
		$Chaos.position.y -= pos_2
		get_node("Chaos/PathFollow2D").loop = true
		stad2_quit()
	if ConfigLanguage.button_fight == 37:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 38:
		button_ft2()
		$Camera2D.ignore_rotation = false
		stad2_quit()
	if ConfigLanguage.button_fight == 39:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 40:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 41:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 42:
		button_ft2()
		$Camera2D.ignore_rotation = true
		stad2_quit()
	if ConfigLanguage.button_fight == 43:
		button_ft2()
		stad2_quit()
	if ConfigLanguage.button_fight == 44:
		button_ft2()
		stad2_quit()
		stad_3()
		$Chaos.queue_free()
	if ConfigLanguage.button_fight == 45:
		$Button.disabled = true
		$Button.visible = false
		get_node("Play/PathFollow2D").loop = true
		$Play.speed = 10



func _on_button_pressed():
	ConfigLanguage.button_fight += 1
	fight_button()
	
func button_ft():
	$Button.disabled = true
	$Button.visible = false
	$Timer.start()
	
func button_ft2():
	$Button.position.x = randi_range(32, 576)
	$Button.position.y = randi_range(-256, 0)
	$Button.disabled = true
	$Button.visible = false
	$Timer2.start()

func _on_timer_timeout():
	$Button.disabled = false
	$Button.visible = true
	
	
func _on_timer_2_timeout():
	$Button.disabled = false
	$Button.visible = true
	
func atk():
	$SoulAtk.position.x = $Soul2.position.x
	$SoulAtk2.position.x = $Soul2.position.x


func _on_stad_2_timeout():
		$Quit.queue_free()
		$Quit2.queue_free()
		$Quit3.queue_free()
		$Quit4.queue_free()
		$Quit5.queue_free()
		$Quit6.queue_free()
		$Quit12.position.y -= pos_2
		get_node("Quit12/PathFollow2D").loop = true
		$Quit12.speed = randi_range(100, 200)
		$Quit13.position.y -= pos_2
		get_node("Quit13/PathFollow2D").loop = true
		$Quit13.speed = randi_range(100, 200)
		$Quit14.position.y -= pos_2
		get_node("Quit14/PathFollow2D").loop = true
		$Quit14.speed = randi_range(100, 200)
		$Quit15.position.y -= pos_2
		get_node("Quit15/PathFollow2D").loop = true
		$Quit15.speed = randi_range(100, 200)
		$Quit16.position.y -= pos_2
		get_node("Quit16/PathFollow2D").loop = true
		$Quit16.speed = randi_range(100, 200)
		$Quit17.position.y -= pos_2
		get_node("Quit17/PathFollow2D").loop = true
		$Quit17.speed = randi_range(100, 200)
		$Quit20.position.y -= pos_2
		get_node("Quit20/PathFollow2D").loop = true
		$Quit20.speed = randi_range(100, 200)
		$Quit21.position.y -= pos_2
		get_node("Quit21/PathFollow2D").loop = true
		$Quit21.speed = randi_range(100, 200)
		$Quit22.position.y -= pos_2
		get_node("Quit22/PathFollow2D").loop = true
		$Quit22.speed = randi_range(100, 200)
		$Quit23.position.y -= pos_2
		get_node("Quit23/PathFollow2D").loop = true
		$Quit23.speed = randi_range(100, 200)
		

func stad2_quit():
		$Quit12.speed = randi_range(100, 200)
		$Quit13.speed = randi_range(100, 200)
		$Quit14.speed = randi_range(100, 200)
		$Quit15.speed = randi_range(100, 200)
		$Quit16.speed = randi_range(100, 200)
		$Quit17.speed = randi_range(100, 200)
		$Quit20.speed = randi_range(100, 200)
		$Quit21.speed = randi_range(100, 200)
		$Quit22.speed = randi_range(100, 200)
		$Quit23.speed = randi_range(100, 200)

func stad_3():
	$Quit12.queue_free()
	$Quit13.queue_free()
	$Quit14.queue_free()
	$Quit15.queue_free()
	$Quit16.queue_free()
	$Quit17.queue_free()
	$Quit20.queue_free()
	$Quit21.queue_free()
	$Quit22.queue_free()
	$Quit23.queue_free()



func _on_boss_finished():
		$Boss.play()
