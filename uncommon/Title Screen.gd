extends Control

func _physics_process(delta):
	if Input.is_action_just_pressed("Enter"):
		get_tree().queue_delete(self) # to fully de-load the node, for no future issues.
		var a = preload("res://uncommon/Pong.tscn").instantiate()
		add_sibling(a)
