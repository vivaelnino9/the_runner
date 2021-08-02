extends KinematicBody2D

var run_speed = 20
var velocity = Vector2(-300, 0)

signal platform_hit

func _physics_process(delta):
	var col = move_and_collide(velocity * delta)
	if col:
		emit_signal("platform_hit")
	
func _ready():
	pass
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_start_game():
	queue_free()
