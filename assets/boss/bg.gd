extends ParallaxBackground


func _process(delta):
	$".".rotation += 1 * delta
