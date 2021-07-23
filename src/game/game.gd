extends Node

#export (PackedScene) var Obstacle

func _ready():
#	$ObstacleTimer.start()
	randomize()

#func game_over():
#	$MobTimer.stop()
	
#func _on_ObstacleTimer_timeout():
#	var obstacle = Obstacle.instance()
#	add_child(obstacle)
#	obstacle.position = $ObstaclePath/ObstacleSpawnLocation.position

