extends Node

signal add_point()

func _ready():
	# dynamically bind all children events
	for child in get_children():
		# re-emit child events
		var err = child.connect("add_point", _add_point)

# re-emitter
func _add_point():
	add_point.emit()
