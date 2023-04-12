extends Sprite

func _ready():
# warning-ignore:return_value_discarded
	Global.connect("RightCONT",self,"RightCONT_handle_c")
	pass

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("game_start"):
		$AnimationPlayer.play("Entering")

func _again():
	$AnimationPlayer.play("Entering")

func RightCONT_handle_c():
	$AnimationPlayer.play("Exiting")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Entering":
		$AnimationPlayer.play("OrderCloudAppear")
	if anim_name == "Exiting":
		_again()
