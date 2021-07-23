extends "in_air.gd"

func initialize():
	pass

func enter():
	height = 0.0
	speed = 600.0
	anim_player.play("jump")

func update(delta):
	animate_gravity(delta)
	if speed <= 0.0 and height > 0.0:
		emit_signal("finished", "falling")


#func animate_jump_height(delta):
#	speed -= GRAVITY * delta
#	height += speed * delta
#	height = max(0.0, height)
#	owner.get_node("AnimatedSprite").position.y = -height
