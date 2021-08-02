extends "../motion.gd"

var speed

func handle_input(event):
	if event.is_action_pressed("ui_up"):
		emit_signal("finished", "jumping")
	if event.is_action_pressed("ui_down"):
		emit_signal("finished", "sliding")
	if event.is_action_pressed("ui_left"):
		emit_signal("finished", "juking")
	if event.is_action_pressed("ui_right"):
		emit_signal("finished", "bashing")
	return .handle_input(event)


func update(delta):
	return .update(delta)
