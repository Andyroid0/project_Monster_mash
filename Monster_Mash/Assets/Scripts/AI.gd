extends Node


signal state_changed(new_state)

enum State{
	PATROL,
	ENGAGE
}

onready var player_detector = $PLayerDetector



var current_state: int = State.PATROL setget set_state
var player: Player = null 
	
func set_state(new_state: int):
	if new_state == current_state:
		return 

		current_state = new_state
		emit_signal("state_changed", current_state)

func _on_PlayerDetector_body_entered(body):
	pass # Replace with function body.