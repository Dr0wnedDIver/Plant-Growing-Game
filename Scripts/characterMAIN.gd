extends Node2D

signal Player_position



#func getPlayerPosition():
	##recive Playerposition to place Clone of Field_Object underneath
	#if Input.is_action_just_pressed("interact"):
		#var playerposition = $CharacterBody2D.position
		#Player_position.emit(playerposition)
		

func _process(delta: float) -> void:
	#getPlayerPosition()
	pass
		


func _on_character_body_2d_character_direction(direction):
	if Input.is_action_just_pressed("interact"):
		var player_position = $CharacterBody2D.position
		var character_direction = direction
		Player_position.emit(player_position)
		
		
