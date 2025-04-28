extends Node

signal health_changed(new_health)

var health := 100:
	set(value):
		health = clamp(value, 0, 100) # makes sure "health" does never exceed 100 or go below 0
		health_changed.emit(health)

var chance := 0.2
var chance_pct: int:
	get:
		return chance * 100
	set(value):
		chance = float(value) / 100.0

func _ready():
	health = -150
	print("Percentage chance: " + str(chance_pct) + "%")
	chance_pct = 75
	print("New percentage chance: " + str(chance_pct) + "%")

func _on_health_changed(new_health: Variant) -> void:
	print(new_health)
