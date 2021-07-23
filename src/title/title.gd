extends Control

var scene_path_to_load

func _ready():
	$panel/HSplitContainer/VBoxContainer/buttons/start_button.grab_focus()
	for button in $panel/HSplitContainer/VBoxContainer/buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
#	$FadeIn.show()
#	$FadeIn.fade_in()
	get_tree().change_scene(scene_to_load)
#
#
#func _on_FadeIn_fade_finished():
#	$FadeIn.hide()
#	get_tree().change_scene(scene_path_to_load)
