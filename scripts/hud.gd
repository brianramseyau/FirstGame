extends Node

var score: int = 0

@onready var score_board = %ScoreBoard

func add_point():
	score += 1
	score_board.text = str(score)
