extends CanvasLayer


func hp_bar_set():
	$Control/Hp/TextureProgressBar.value = ConfigLanguage.hp_boss2
	$Control/Hp/TextureProgressBar/Hp.text = str(ConfigLanguage.hp_boss2) + "/1000"
