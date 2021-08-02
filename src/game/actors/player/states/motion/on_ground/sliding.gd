extends "on_ground.gd"

func initialize():
	pass

func enter():
	anim_player.play("slide")
	owner.get_node("sliding_collision").disabled = false
	
func update(delta):
	pass

func _on_animation_finished(anim_name):
	emit_signal("finished", "previous")

func exit():
	owner.get_node("sliding_collision").disabled = true
	
