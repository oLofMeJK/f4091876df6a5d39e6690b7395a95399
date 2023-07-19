extends KinematicBody2D
		

func _ready():
	update_rule()
	
	print("")
	print("mario")
	print("")
	pass 
	
	
var vec = Vector2(0,0)



var speed = 300
var acc = 50



var jump = 510

var acc_j = 100
var gr = 500

var inertia = 0
var side = null

func update_rule():
	$Camera2D.zoom = Vector2(1,1)
	$Camera2D.limit_left = -10000000
	$Camera2D.limit_top = 0
	$Camera2D.limit_right = 10000000
	$Camera2D.limit_bottom = 1400

	pass


func _physics_process(delta):
	
	vec.y += gr * 5 * delta
	if Input.is_action_just_pressed("w"):
		if is_on_floor():
			vec.y = -jump * 100 *  delta
	
	
	
	if Input.is_action_pressed("a"):
		if side != "left":
			vec.x = max(vec.x- acc, -speed)
			inertia = vec.x

		else:
			vec.x = 0
			side = "left"
			
		inertia = vec.x
		
	elif Input.is_action_pressed("d"):
		
		vec.x = min(vec.x + acc, speed)
		inertia = vec.x
	
	

			
		
		
	else:
		if !is_on_floor() and !is_on_wall():
			
			vec.x = lerp(inertia, 0, 20 * delta)
		else:
			vec.x = lerp(vec.x, 0,  .5)
			inertia = 0
	
	
		
	if Input.is_action_just_pressed("space"):
		pass
		
		
	
	vec = move_and_slide(vec, Vector2.UP)
	pass


func _input(e):
	pass


func _on_Player_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print(body_rid)
	pass # Replace with function body.
