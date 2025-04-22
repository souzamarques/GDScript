extends Node

var health = 100
var game_over = false

func _input(event):
	# Test test test
	if event.is_action_pressed("my_action") and not game_over:
		health -= 10
		if(health <= 0):
			print(health)
			print("YOU DIED!")
			print("GAME OVER")
			game_over = true
		elif(health == 30):
			print("You are injured!")
			print(health)
		elif(health == 10):
			print("You are in really bad shape!")
			print(health)
		else:
			print(health)
	
