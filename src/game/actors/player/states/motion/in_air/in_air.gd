extends "../motion.gd"

func handle_input(event):
	if event.is_action_pressed("ui_down"):
		emit_signal("finished", "falling")
	return .handle_input(event)
