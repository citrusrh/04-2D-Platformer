extends Node

var score := 0
var savedPosition = Vector2(93, 152)

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
