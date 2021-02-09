extends Node


var enemy_scene = load("res://Scenes/Enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy = enemy_scene.instance()
	add_child(enemy)