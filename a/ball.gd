extends Node2D

var move_pwr = Vector2(-1,1)
var speed = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.ball_loc = global_position
	if $kill.has_overlapping_bodies() and $xt.is_stopped():
		$xt.start(.1)
		move_pwr.x = -move_pwr.x 
	if $Area2D.has_overlapping_bodies() and $yt.is_stopped():
		$yt.start(.1)
		move_pwr.y = -move_pwr.y
	global_position += move_pwr * speed



func _on_timer_timeout():
	speed += 0.5
