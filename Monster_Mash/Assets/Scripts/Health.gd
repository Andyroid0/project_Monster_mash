extends Node

signal max_changed(new_max)
signal changed(new_amount)

export(int) var max_amount = 10 
onready var current = max_amount 

func set_max()
