extends Node2D

var soul = preload("res://assets/fith/soul_arena.tscn").instantiate()
var tile2 = preload("res://assets/fith/!!!.tscn")
var tile_2 = null

func _ready():
	$Anim.play("ready")
	get_tree().paused = false
	get_parent().add_child(soul)
	soul.position = Vector2(576, 448)
	atak()
	await get_tree().create_timer(10.0).timeout
	soul.queue_free()
func delete():
	queue_free()
	get_tree().paused = true
	
func fight2():
	tile_2 = tile2.instantiate()
	get_parent().add_child(tile_2)
	tile_2.position = Vector2(596, soul.position.y - 86)
func atak():
	var tile = randi_range(0,5)
	#var tile = 5
	if tile == 0:
		ConfigLanguage.mode = 0
		$Atak.play("0")
	if tile == 1:
		ConfigLanguage.mode = 0
		$Atak.play("1")
	if tile == 2:
		ConfigLanguage.mode = 0
		while true:
			fight2()
			await get_tree().create_timer(1.9).timeout
	if tile == 3:
		ConfigLanguage.mode = 1
		$Atak.play("3")
	if tile == 4:
		ConfigLanguage.mode = 1
		$Atak.play("4")
	if tile == 5:
		ConfigLanguage.mode = 0
		$Atak.play("5")
