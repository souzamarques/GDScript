extends Node

signal leveled_up(msg)

var xp := 0

func _ready():
	leveled_up.connect(_on_leveled_up)

# func _on_button_pressed() -> void:
#	print("Test test")

func _on_timer_timeout() -> void:
	xp += 5
	print(xp)
	if xp > 0 and xp < 20:
		print("Test reached a new level!")
	else:
		xp = 0
		leveled_up.emit("Nice!")

func _on_leveled_up(msg):
	print(msg)
