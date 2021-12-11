extends Node2D

var Player = preload("res://Player/Player.tscn")
var respawning = false

func _physics_process(_delta):
	if (get_child_count() == 1) and (!respawning):
		$Respawning.start()
		respawning = true
		

func _on_Respawning_timeout():
	var player = Player.instance()
	player.position = Vector2(512,300)
	add_child(player)
	respawning = false
