extends Area2D

onready var Global = get_node("/root/Global")


func _on_Exit_body_entered(body):
	if body.name == "Player":
		Global.savedPosition = Vector2(93,152)
		get_tree().change_scene("res://Levels/WinScreen.tscn")
