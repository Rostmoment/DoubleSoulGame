extends Node2D

var speed_door = 5

func _physics_process(delta):
	ConfigLanguage.__genocid()
	if ConfigLanguage.soul_dialog_finish == 1:
		$Door.position.y = 6969

func _on_hello_body_entered(body):
	if ConfigLanguage.room1_death == 4 and 	ConfigLanguage.music == 0 and ConfigLanguage.room1_finish == 0 and ConfigLanguage.room2_finish == 0 and ConfigLanguage.room3_finish == 0:
		_bad_final()
	else:
		default()
		
func _bad_final():
		#ConfigLanguage.bad_final = true
		$DoorDeath3.position.y = 840
		$DoorDeath2.position.y = 840
		$DoorDeath.position.y = 904
		$DoorDeath4.position.y = 904

func default():
	$DialogsBox/DialogPoint19.queue_free()
	$Hello.queue_free()



