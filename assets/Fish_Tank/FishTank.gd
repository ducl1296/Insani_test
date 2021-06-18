extends Node2D

export (PackedScene) var Food

onready var screen_size = get_viewport_rect().size #Get screen size (480/320)
func _ready(): #Load
	.set("food_count", 0)

func _physics_process(delta): #Update
	
	var mouse_pos = get_global_mouse_position() #Get mouse position
	
	if Input.is_action_pressed("click"):
		var food = Food.instance()
		food.global_position = mouse_pos
		get_tree().call_group("fishtank","add_child",food)
	

