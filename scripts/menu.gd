extends Control

func _ready():
	# enable keyboard selection
	%NewGameButton.grab_focus()

func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_quit_game_button_pressed():
	get_tree().quit()
