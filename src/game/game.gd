extends Node

export (PackedScene) var platform

var rng = RandomNumberGenerator.new()

func _ready():
	$platform_timer.start()
	randomize()

#func game_over():
#	$MobTimer.stop()

func _on_platform_timer_timeout():
	var p = platform.instance()
	add_child(p)
	for child in $player/states.get_children():
		p.connect("platform_hit", child, "_on_platform_hit")
	var x_pos = 1200
	var y_pos = 300
#	var y_pos = rng.randf_range(100, 500)
	p.set_position(Vector2(x_pos, y_pos))
