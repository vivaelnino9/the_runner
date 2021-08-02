extends "../state.gd"

var VELOCITY = Vector2.ZERO
var GRAVITY = 1800
var SPEED = -1000

func _on_platform_hit():
	emit_signal("finished", "staggering")
