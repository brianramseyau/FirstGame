extends Node

@onready var hud = %HUD

func _on_coins_add_point():
	hud.add_point()
