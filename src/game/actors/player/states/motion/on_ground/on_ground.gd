extends "../motion.gd"

var speed

func handle_input(event):
	if event.is_action_pressed("ui_up"):
		emit_signal("finished", "jumping")
	elif event.is_action_pressed("ui_down"):
		emit_signal("finished", "sliding")
	elif event.is_action_pressed("ui_left"):
		emit_signal("finished", "juking")
	elif event.is_action_pressed("ui_right"):
		emit_signal("finished", "bashing")
	return .handle_input(event)
