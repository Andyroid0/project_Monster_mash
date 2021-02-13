extends Node2D


onready var player_detector = $PLayerDetector

enum {
	PATROL,
	ENGAGE
}

func _on_PlayerDetector_body_entered(body):
	pass # Replace with function body.
