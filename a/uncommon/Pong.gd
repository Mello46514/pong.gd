extends Node2D

var scorel = 0
var scorer = 0

func _process(delta):
	$Label.text = str(scorel) + " : " + str(scorer)
	if $Left.has_overlapping_areas() or $Right.has_overlapping_areas():
		get_child(7).speed = 0; get_child(7).global_position = Vector2(480,360)
		if $Left.has_overlapping_areas():
			scorer += .5
			get_child(7).move_pwr = Vector2(-1,1)
		if  $Right.has_overlapping_areas():
			scorel += .5
			get_child(7).move_pwr = Vector2(1,1)

# issue: in the score giving section, it plays twice,
# temp_solution: make it give .5 instead of 1
