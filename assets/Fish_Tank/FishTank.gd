extends Node2D

export (PackedScene) var Food


onready var screen_size = get_viewport_rect().size #Get screen size (480/320)
func _ready(): #Load
	pass

func _physics_process(delta): #Update
	var mouse_pos = get_global_mouse_position() #Get mouse position
	
	if Input.is_action_just_pressed("click") and Global.current_food < Global.max_food:
		var food = Food.instance()
		food.global_position = mouse_pos
		Global.current_food += 1
		get_tree().call_group("fishtank","add_child",food)
		
		
	print(Global.current_food)
	$UI/money.text = "Money: " + str(Global.money)
