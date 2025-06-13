extends StaticBody2D


func _ready() -> void:
	hide()
	
var Position = (0|0)
var Direction = (0|0)

func _on_character_player_position(CharacterPosition: Variant):
	Position = CharacterPosition


func _on_character_character_direction(CharacterDirection: Variant):
	var Direction = CharacterDirection

func _place_Field(PositionOfCharacter, DirectonOfCharacter):
	if Input.is_action_just_pressed("interact"):
		var direction = DirectonOfCharacter + 1
		var fieldposition = DirectonOfCharacter + direction
		print("Direction of Field: "+  str(direction))
		print("Position of Field: " + str(fieldposition))
		

func _process(delta: float):
	_place_Field(Position, Direction)
	
