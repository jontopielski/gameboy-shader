extends Node2D

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		$GBShader.visible = !$GBShader.visible
