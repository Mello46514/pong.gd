extends CharacterBody2D


func _physics_process(delta):
	if Global.ball_loc.x > 480:
		if Global.ball_loc.y > global_position.y:
			velocity.y = 300
		elif  Global.ball_loc.y < global_position.y:
			velocity.y = -300
	else:
		if  360 > global_position.y:
			velocity.y = 300
		elif  360 < global_position.y:
			velocity.y = -300
	move_and_slide()
