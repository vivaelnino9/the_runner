extends "../state_machine.gd"

func _ready():
	states_map = {
		"idle": owner.get_node("states/idle"),
		"running": owner.get_node("states/running"),
		"jumping": owner.get_node("states/jumping"),
		"falling": owner.get_node("states/falling"),
		"sliding": owner.get_node("states/sliding"),
		"juking": owner.get_node("states/juking"),
		"bashing": owner.get_node("states/bashing")
	}

func _change_state(state_name):
	"""
	The base state_machine interface this node extends does most of the work
	"""
	if not _active:
		return
	if state_name in ["running", "jumping", "sliding", "juking", "bashing"]:
		states_stack.push_front(states_map[state_name])
	if state_name == "falling" and current_state == states_map["jumping"]:
		states_map["falling"].initialize(states_map["jumping"].speed, states_map["jumping"].height)
	._change_state(state_name)

func _input(event):
	"""
	Here we only handle input that can interrupt states, attacking in this case
	otherwise we let the state node handle it
	"""
#	if event.is_action_pressed("attack"):
#		if current_state == $Attack:
#			return
#		_change_state("attack")
#		return
	current_state.handle_input(event)
