extends "on_ground.gd" 

func initialize():
	pass

func enter():
	anim_player.play("run")
	owner.get_node("running_collision").disabled = false

func handle_input(event):
	return .handle_input(event)

func update(delta):
	owner.move_and_slide_with_snap(
		Vector2.ZERO, Vector2.DOWN*10.0, Vector2.UP, false, 4, 0.9, false
	)
	return .update(delta)


func exit():
	owner.get_node("running_collision").disabled = true
