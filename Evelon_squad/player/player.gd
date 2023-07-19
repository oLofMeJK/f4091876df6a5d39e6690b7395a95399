extends RigidBody2D
class_name Player

var flappy_bird = load("res://games/flappy_bird/script/fplappy_bird.gd")
var mario = load("res://games/mario/script/mario.gd")


export(String, "none", "flappyBird", "mario") var type_game = "none" setget set_type_game


var vec = Vector2(100, -300)
var speed = 200

func _ready():
	
	pass 

func _physics_process(delta):
	
	pass

func update_rule():
	
	pass

func set_type_game(v):
	
	type_game = v
	if type_game == "flappyBird":
		set_script(flappy_bird)
		
	elif type_game == "mario":
		set_script(mario)
	pass






func _on_Player_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	pass # Replace with function body.
