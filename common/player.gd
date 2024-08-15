extends CharacterBody2D


func _physics_process(delta):
	if Global.control == "classic":
		velocity.y = Input.get_axis("ui_up","ui_down") * 3
	
	move_and_slide()
