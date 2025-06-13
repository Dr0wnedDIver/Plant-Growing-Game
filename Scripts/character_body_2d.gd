extends CharacterBody2D


const SPEED := 3000

signal Player_position(CharacterPosition)
signal character_direction(CharacterDirection)

@onready var _animated_sprite = $AnimatedSprite2D


func check_movement(_delta):
	#Get Input for Vector and create Movement
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED * _delta
	character_direction.emit(direction)
	

func Field_Input():
	if Input.is_action_just_pressed("interact"):
		var CharacterPosition = position
		Player_position.emit(CharacterPosition)



func animate_character_movement():	
	#Get Input on specifc action and activate animation
	if Input.is_action_pressed("move_down"):
		_animated_sprite.play("Walking Down")
	elif  Input.is_action_pressed("move_right"):
		_animated_sprite.play("Walking Right")
	elif  Input.is_action_pressed("move_left"):
		_animated_sprite.play("Walking Left")
	elif  Input.is_action_pressed("move_up"):
		_animated_sprite.play("Walking Up")
	else:
		_animated_sprite.stop()

func _physics_process(_delta):
	check_movement(_delta)
	move_and_slide()
	
func _process(_delta):
	animate_character_movement()
	Field_Input()
