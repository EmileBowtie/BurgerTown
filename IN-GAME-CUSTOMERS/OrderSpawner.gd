extends Node2D

var BottomBun = preload("res://IN-GAME-INGREDIENTS/BottomBun.tscn")
var Patty = preload("res://IN-GAME-INGREDIENTS/Patty.tscn")
var Cheese = preload("res://IN-GAME-INGREDIENTS/Cheese.tscn")
var Tomato = preload("res://IN-GAME-INGREDIENTS/Tomato.tscn")
var Onion = preload("res://IN-GAME-INGREDIENTS/Onion.tscn")
var Pickles = preload("res://IN-GAME-INGREDIENTS/Pickles.tscn")
var TopBun = preload("res://IN-GAME-INGREDIENTS/TopBun.tscn")

var Order_Layer_1 = null
var Order_Layer_2 = null
var Order_Layer_3 = null
var Order_Layer_4 = null
var Order_Layer_5 = null
var Order_Layer_6 = null

var OL1_MADE = false
var OL2_MADE = false
var OL3_MADE = false
var OL4_MADE = false
var OL5_MADE = false
var OL6_MADE = false

var GENERAL_INGREDIENTS = [Patty,Cheese,Tomato,Onion,Pickles,TopBun]
var INGREDIENTS_FOR_4 = [Patty,Cheese,Tomato,Onion,Pickles]

func _ready():
	randomize()

func order_creation():
	randomize()
	if !OL1_MADE:
		Order_Layer_1 = BottomBun.instance()
		Order_Layer_1.position = Vector2(243,263)
		add_child(Order_Layer_1)
		if Order_Layer_1 == BottomBun:
			Global.OL1_NUMBER = 0
		OL1_MADE = true
	if !OL2_MADE:
		var Layer2 = GENERAL_INGREDIENTS[randi()%GENERAL_INGREDIENTS.size()]
		Order_Layer_2 = Layer2.instance()
		Order_Layer_2.position = Vector2(243,222)
		if Layer2 == TopBun:
			Global.OL2_NUMBER = 6
			print("Bun-2")
			OL3_MADE = true
			OL4_MADE = true
			OL5_MADE = true
			OL6_MADE = true
		if Layer2 == Patty:
			Global.OL2_NUMBER = 1
		if Layer2 == Cheese:
			Global.OL2_NUMBER = 2
		if Layer2 == Tomato:
			Global.OL2_NUMBER = 3
		if Layer2 == Onion:
			Global.OL2_NUMBER = 4
		if Layer2 == Pickles:
			Global.OL2_NUMBER = 5
		add_child(Order_Layer_2)
		OL2_MADE = true
	if !OL3_MADE:
		var Layer3 = GENERAL_INGREDIENTS[randi()%GENERAL_INGREDIENTS.size()]
		Order_Layer_3 = Layer3.instance()
		Order_Layer_3.position = Vector2(254,203)
		if Layer3 == TopBun:
			Global.OL3_NUMBER = 6
			print("Bun-3")
			Order_Layer_3.position = Vector2(254,170)
			OL4_MADE = true
			OL5_MADE = true
			OL6_MADE = true
		if Layer3 == Patty:
			Global.OL3_NUMBER = 1
		if Layer3 == Cheese:
			Global.OL3_NUMBER = 2
		if Layer3 == Tomato:
			Global.OL3_NUMBER = 3
		if Layer3 == Onion:
			Global.OL3_NUMBER = 4
		if Layer3 == Pickles:
			Global.OL3_NUMBER = 5
		add_child(Order_Layer_3)
		OL3_MADE = true
	if !OL4_MADE:
		var Layer4 = INGREDIENTS_FOR_4[randi()%INGREDIENTS_FOR_4.size()]
		Order_Layer_4 = Layer4.instance()
		Order_Layer_4.position = Vector2(254,185)
		if Layer4 == TopBun:
			Global.OL4_NUMBER = 6
			OL5_MADE = true
			OL6_MADE = true
		if Layer4 == Tomato:
			Global.OL4_NUMBER = 3
			Order_Layer_4.position = Vector2(254,178)
		if Layer4 == Onion:
			Global.OL4_NUMBER = 4
			Order_Layer_4.position = Vector2(254,178)
		if Layer4 == Cheese:
			Global.OL4_NUMBER = 2
			Order_Layer_4.position = Vector2(254,176)
		if Layer4 == Patty:
			Global.OL4_NUMBER = 1
			Order_Layer_4.position = Vector2(254,174)
		if Layer4 == Pickles:
			Global.OL4_NUMBER = 5
		add_child(Order_Layer_4)
		OL4_MADE = true
	if !OL5_MADE:
		var Layer5 = GENERAL_INGREDIENTS[randi()%GENERAL_INGREDIENTS.size()]
		Order_Layer_5 = Layer5.instance()
		Order_Layer_5.position = Vector2(254,165)
		if Layer5 == TopBun:
			Order_Layer_5.position = Vector2(254,100)
			Global.OL5_NUMBER = 6
			print("Bun-5")
			OL6_MADE = true
		if Layer5 == Tomato:
			Global.OL5_NUMBER = 3
			Order_Layer_5.position = Vector2(254,160)
		if Layer5 == Onion:
			Global.OL5_NUMBER = 4
			Order_Layer_5.position = Vector2(254,160)
		if Layer5 == Patty:
			Global.OL5_NUMBER = 1
			Order_Layer_5.position = Vector2(254,157)
		if Layer5 == Cheese:
			Global.OL5_NUMBER = 2
			Order_Layer_5.position = Vector2(254,157)
		if Layer5 == Pickles:
			Global.OL5_NUMBER = 5
		add_child(Order_Layer_5)
		OL5_MADE = true
	if !OL6_MADE:
		Order_Layer_6 = TopBun.instance()
		Order_Layer_6.position = Vector2(254,100)
		Global.OL6_NUMBER = 6
		add_child(Order_Layer_6)
		OL6_MADE = true
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "OrderCloudAppear":
		order_creation()
