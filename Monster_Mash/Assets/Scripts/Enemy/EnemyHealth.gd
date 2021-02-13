extends Node

signal max_changed(new_max)
signal changed(new_amount)

export(int) var max_amount = 5 setget set_max
onready var current = max_amount setget set_current # setget makes these vairables used in the function itself so if 
# they get changed it goes to the function itself instead of the variable 

func _ready():
	_initialize()

func set_max(new_max):
	max_amount = max(1, new_max)  # this is used to make sure max health never goes below zero	
	emit_signal("max_changed", max_amount) 

func set_current(new_value):
	current = clamp(current, 0, max_amount) # current wont be below 0 and wont be above maxhealth
	emit_signal("changed", current)


	if current == 0:
		emit_signal("depleted")

func _initialize():
	emit_signal("max_changed", max_amount)
	emit_signal("changed", current)
