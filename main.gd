extends Node

var health: int = 100 # Specified type. "health" always stay an integer.
var damage := 10 # Inver typing. Godot automatically determine the data type.
@export var heavy_damage := 30 # The value set in the script will just be the default value. The value can be changed in the inspector
const GRAVITY = -9.81

func _readY():
	pass
