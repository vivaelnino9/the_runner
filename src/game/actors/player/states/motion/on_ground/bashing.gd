extends "on_ground.gd"

func initialize():
	pass

func enter():
	anim_player.play("bash")
	owner.get_node("bashing_collision").disabled = false
	
func update(delta):
	if not anim_player.is_playing():
		emit_signal("finished", "running")
	else:
		pass

func exit():
	owner.get_node("bashing_collision").disabled = true
	
