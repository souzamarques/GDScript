extends Node

func _ready():
	Sum(30, 20)
	Sum(48, 24)

func _input(event):
	if(event.is_action_pressed("my_action")):
		Jump()

func Sum(n1, n2):
	print("Result Sum: " + str(n1 + n2))
	
	var sub1 = n1
	var sub2 = n2
	Sub(sub1, sub2)
	print("Result Sub: " + str(n1 -n2))
	
func Sub(n1: int, n2: int) -> int: # statically typed parameters
	return n1 - n2

func Jump():
	print("JUMP!")
