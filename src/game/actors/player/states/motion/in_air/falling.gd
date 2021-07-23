extends "in_air.gd"

func initialize(enter_speed, enter_height):
	anim_player.play("fall")
	speed = -enter_speed
	height = enter_height

func enter():
	pass

func update(delta):
	animate_gravity(delta)
	if height <= 0.0:
		if Input.is_action_pressed("ui_down"):
			emit_signal("finished", "sliding")
		else:
			emit_signal("finished", "running")
		return
	if Input.is_action_pressed("ui_down"):
		speed *= 1.1
