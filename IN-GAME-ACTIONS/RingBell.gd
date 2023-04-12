extends Node2D


func _ready():
# warning-ignore:return_value_discarded
	Global.connect("bell_ringed",self,"bell_ringed_handle")
	pass 

func bell_ringed_handle():
	$AnimationPlayer.play("Ready")
