extends Node

signal RightCONT
signal bell_ringed

var OL1_NUMBER = 0
var OL2_NUMBER = 0
var OL3_NUMBER = 0
var OL4_NUMBER = 0
var OL5_NUMBER = 0
var OL6_NUMBER = 0

var BL1_NUMBER = 0
var BL2_NUMBER = 0
var BL3_NUMBER = 0 
var BL4_NUMBER = 0
var BL5_NUMBER = 0
var BL6_NUMBER = 0

var OrderLayerNumbers = [OL1_NUMBER,OL2_NUMBER,OL3_NUMBER,OL4_NUMBER,OL5_NUMBER,OL6_NUMBER]
var BurgerLayerNumbers = [BL1_NUMBER,BL2_NUMBER,BL3_NUMBER,BL4_NUMBER,BL5_NUMBER,BL6_NUMBER]

func _ready():
	pass 

func _print():
	print(OL1_NUMBER,OL2_NUMBER,OL3_NUMBER,OL4_NUMBER,OL5_NUMBER,OL6_NUMBER)

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("Ring_Bell_Done"):
		emit_signal("bell_ringed")
		if OL1_NUMBER==BL1_NUMBER && OL2_NUMBER==BL2_NUMBER && OL3_NUMBER==BL3_NUMBER && OL4_NUMBER==BL4_NUMBER && OL5_NUMBER==BL5_NUMBER && OL6_NUMBER==BL6_NUMBER:
			print("Right")
			emit_signal("RightCONT")
		else:
			print("aint_right")
