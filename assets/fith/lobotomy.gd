extends GPUParticles2D
	
func _ready():
	if ConfigLanguage.localization == 0:
		$"../Button/NAME".text = "ГЛИН"
	if ConfigLanguage.localization == 1:
		$"../Button/NAME".text = "GLIN"
	
	
func _physics_process(delta):
	var speed: int = 40 * ConfigLanguage.end_hp_boss
	$"../Fith/PathFollow2D".progress += speed * delta
	$"../Button/HpBar".value = ConfigLanguage.glin_hp
	$"../Button/HP".text = "HP " + str(ConfigLanguage.glin_hp) + "/" + str($"../Button/HpBar".max_value)
	position.x = randf_range(0.0, 1152.0)
	if !ConfigLanguage.end_hp_boss <= 0:
		amount = ConfigLanguage.end_hp_boss
	if ConfigLanguage.end_hp_boss == 0:
		emitting = false
