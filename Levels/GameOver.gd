extends Control

onready var Global = get_node("/root/Global")


func _on_Retry_pressed():
	Global.savedPosition = Vector2(93,152)
	Global.score = 0
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_GiveUp_pressed():
	Global.savedPosition = Vector2(93,152)
	Global.score = 0
	get_tree().quit()
