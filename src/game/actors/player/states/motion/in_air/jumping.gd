extends "in_air.gd"

func initialize(enter_velocity):
	VELOCITY = enter_velocity
	if VELOCITY.y == 0:
		VELOCITY.y = SPEED

func enter():
	anim_player.play("jump")
	owner.get_node("falling_collision").disabled = false

func update(delta):
	owner.move_and_slide(VELOCITY, Vector2.UP, false, 4, 0.9, false)
	VELOCITY.y += GRAVITY * delta
	if VELOCITY.y > 0:
		emit_signal("finished", "falling")


func exit():
	owner.get_node("falling_collision").disabled = true
