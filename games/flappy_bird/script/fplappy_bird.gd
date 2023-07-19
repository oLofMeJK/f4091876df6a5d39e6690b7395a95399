extends Player


var  a2 = load("res://games/player_game.gd")



func _ready():
	speed = 200
	linear_velocity.x = 200
	update_rule()

	pass 


func update_rule():
	$Camera2D.zoom = Vector2(0.7,0.7)
	$Camera2D.limit_left = 1
	$Camera2D.limit_top = 1
	$Camera2D.limit_right = 10000000
	$Camera2D.limit_bottom = 1
	
	
	
	pass



func _physics_process(delta):
	if linear_velocity.x < 200:
		linear_velocity.x += speed * delta
	else:
		linear_velocity.x = 200
		
	
	pass


func _input(e):
	if e is InputEvent:
		if e.is_action_pressed("space"):
			linear_velocity.y = 0
			apply_central_impulse(Vector2(0, -1000))
			

	pass

