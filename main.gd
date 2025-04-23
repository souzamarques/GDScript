extends Node

func _ready():
	var lucky_number = randf()
	print("Lucky lucky: " + str(lucky_number))
	
	var roll = randi_range(2, 12) # randi: random INTEGER between 2 and 12
	if(roll >= 2) and (roll <= 5):
		print("Roll result: " + str(roll) + ". Too bad")
	elif(roll >= 6) and (roll <= 9):
		print("Roll result: " + str(roll) + ". Good")
	elif(roll >= 10) and (roll <= 11):
		print("Roll result: " + str(roll) + ". That was close!")
	else:
		print("Roll result: " + str(roll) + ". CONGRATS!!")
	
	var height_character = randf_range(1.40, 2.20) #
	print("Character height: " + str("%0.2f" % height_character) + "m")
