class_name Coin extends Area2D

@onready var animation_player = $AnimationPlayer

signal add_point()

func _on_body_entered(body):
	add_point.emit()
	# custom animation that: hides coin, plays sound, and removes with queue_free()
	animation_player.play("pickup")
