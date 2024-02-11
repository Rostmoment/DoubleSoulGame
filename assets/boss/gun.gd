extends Area2D

const atk = preload("res://assets/boss/soul_main_atk.tscn")


func _ready():
	$AnimatedSprite2D.play("idle")


func _on_body_entered(body):
	$AnimatedSprite2D.play("atk")
	var atk_ = atk.instantiate()
	atk_.position = $AtkPos.global_position
	get_parent().add_child(atk_)


func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("idle")
