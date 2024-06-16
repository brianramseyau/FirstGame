extends Area2D

@onready var timer = $Timer
@onready var hurt_sound = $HurtSound


func _on_body_entered(body):
	# slow down time to 50%
	Engine.time_scale = 0.5
	# remove body collision to fall from world
	body.get_node("CollisionShape2D").queue_free()
	hurt_sound.play()
	timer.start()

func _on_timer_timeout():
	# set time back to normal
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
