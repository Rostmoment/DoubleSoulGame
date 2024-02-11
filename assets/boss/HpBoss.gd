extends CanvasLayer



func set_value():
	$Control/Hp/TextureProgressBar.value = ConfigLanguage.hp_boss
	$Control/Hp/TextureProgressBar/Hp.text = str(ConfigLanguage.hp_boss) + "/1000"
