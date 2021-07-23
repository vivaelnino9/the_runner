extends "on_ground.gd"

func enter():
	owner.get_node("AnimatedSprite/AnimationPlayer").play("idle")

func handle_input(event):
	return .handle_input(event)

func update(delta):
	pass
