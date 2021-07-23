extends "../motion.gd"

var speed
var height

export(float) var GRAVITY = 600.0

func handle_input(event):
	if event.is_action_pressed("ui_down"):
		emit_signal("finished", "falling")
	return .handle_input(event)
	

func animate_gravity(delta):
	speed -= GRAVITY * delta
	height += speed * delta
	height = max(0.0, height)
	owner.get_node("AnimatedSprite").position.y = -height
