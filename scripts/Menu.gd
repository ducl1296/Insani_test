extends Control


func _ready():
	pass

func _physics_process(delta):
	pass


func _on_Button2_pressed():
	get_tree().quit()


func _on_Button_pressed():
	get_tree().change_scene("res://assets/Fish_Tank/FishTank.tscn")
