extends "in_air.gd"

func initialize(enter_velocity):
	VELOCITY = enter_velocity

func enter():
	anim_player.play("fall")
	owner.get_node("falling_collision").disabled = false

func update(delta):
	if owner.is_on_floor():
		if Input.is_action_pressed("ui_down"):
			emit_signal("finished", "sliding")
			return
		emit_signal("finished", "running")
		return
	if Input.is_action_pressed("ui_down"):
		VELOCITY.y = SPEED * -1.6
	
	owner.move_and_slide_with_snap(
		VELOCITY, Vector2.DOWN*10.0, Vector2.UP, false, 4, 0.9, false
	)
	VELOCITY.y += delta * GRAVITY

func exit():
	owner.get_node("falling_collision").disabled = true
