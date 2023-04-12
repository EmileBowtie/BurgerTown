extends Control

var BottomBun_Resource = preload("res://IN-GAME-INGREDIENTS/BottomBun.tscn")
var Patty_Resource  = preload("res://IN-GAME-INGREDIENTS/Patty.tscn")
var Cheese_Resource  = preload("res://IN-GAME-INGREDIENTS/Cheese.tscn")
var Tomato_Resource  = preload("res://IN-GAME-INGREDIENTS/Tomato.tscn")
var Onion_Resource  = preload("res://IN-GAME-INGREDIENTS/Onion.tscn")
var Pickles_Resource  = preload("res://IN-GAME-INGREDIENTS/Pickles.tscn")
var TopBun_Resource  = preload("res://IN-GAME-INGREDIENTS/TopBun.tscn")

var BL_1_MADE = false
var BL_2_MADE = false
var BL_3_MADE= false
var BL_4_MADE = false
var BL_5_MADE = false
var BL_6_MADE = false

func _ready():
	Global.connect("bell_ringed",self,"bl_reset")

func bl_reset():
	BL_1_MADE = false
	BL_2_MADE = false
	BL_3_MADE= false
	BL_4_MADE = false
	BL_5_MADE = false
	BL_6_MADE = false

func _on_BunButton_pressed():
	if !BL_1_MADE:
		var BottomBun = BottomBun_Resource.instance()
		BottomBun.position = Vector2(215,916)
		add_child(BottomBun)
		Global.BL1_NUMBER = 0
		BL_1_MADE = true
		print("Layer1-made")
	elif !BL_2_MADE:
		var TopBun = TopBun_Resource.instance()
		TopBun.position = Vector2(215,843)
		add_child(TopBun)
		Global.BL2_NUMBER = 6
		BL_2_MADE = true
		BL_3_MADE = true
		BL_4_MADE = true
		BL_5_MADE = true
		BL_6_MADE = true
		print("Layer2-made")
	elif !BL_3_MADE:
		var TopBun = TopBun_Resource.instance()
		TopBun.position = Vector2(215,752)
		add_child(TopBun)
		Global.BL3_NUMBER = 6
		BL_3_MADE = true
		BL_4_MADE = true
		BL_5_MADE = true
		BL_6_MADE = true
		print("Layer3-made")
	elif !BL_4_MADE:
		var TopBun = TopBun_Resource.instance()
		TopBun.position = Vector2(215,661)
		add_child(TopBun)
		Global.BL4_NUMBER = 6
		BL_4_MADE = true
		BL_5_MADE = true
		print("Layer4-made")
	elif !BL_5_MADE:
		var TopBun = TopBun_Resource.instance()
		TopBun.position = Vector2(215,571)
		add_child(TopBun)
		Global.BL5_NUMBER = 6
		BL_5_MADE = true
		BL_6_MADE = true
		print("Layer5-made")
	elif !BL_6_MADE:
		var TopBun = TopBun_Resource.instance()
		TopBun.position = Vector2(215,482)
		add_child(TopBun)
		Global.BL6_NUMBER = 6
		BL_6_MADE = true
		print("Layer6-made")

func _on_PattyButton_pressed():
	if BL_1_MADE:
		if !BL_2_MADE:
			var patty = Patty_Resource.instance()
			patty.position = Vector2(215,871)
			add_child(patty)
			Global.BL2_NUMBER = 1
			BL_2_MADE = true
		elif !BL_3_MADE:
			var patty = Patty_Resource.instance()
			patty.position = Vector2(215,836)
			add_child(patty)
			Global.BL3_NUMBER = 1
			BL_3_MADE = true
		elif !BL_4_MADE:
			var patty = Patty_Resource.instance()
			patty.position = Vector2(215,801)
			add_child(patty)
			Global.BL4_NUMBER = 1
			BL_4_MADE = true
		elif !BL_5_MADE:
			var patty = Patty_Resource.instance()
			patty.position = Vector2(215,765)
			add_child(patty)
			Global.BL5_NUMBER = 1
			BL_5_MADE = true

func _on_CheeseButton_pressed():
	if BL_1_MADE:
		if !BL_2_MADE:
			var cheese = Cheese_Resource.instance()
			cheese.position = Vector2(215,871)
			add_child(cheese)
			Global.BL2_NUMBER = 2
			BL_2_MADE = true
		elif !BL_3_MADE:
			var cheese = Cheese_Resource.instance()
			cheese.position = Vector2(215,836)
			add_child(cheese)
			Global.BL3_NUMBER = 2
			BL_3_MADE = true
		elif !BL_4_MADE:
			var cheese = Cheese_Resource.instance()
			cheese.position = Vector2(215,801)
			add_child(cheese)
			Global.BL4_NUMBER = 2
			BL_4_MADE = true
		elif !BL_5_MADE:
			var cheese = Cheese_Resource.instance()
			cheese.position = Vector2(215,765)
			add_child(cheese)
			Global.BL5_NUMBER = 2
			BL_5_MADE = true

func _on_PickleButton_pressed():
	if BL_1_MADE:
		if !BL_2_MADE:
			var Pickles = Pickles_Resource.instance()
			Pickles.position = Vector2(215,871)
			add_child(Pickles)
			Global.BL2_NUMBER = 5
			BL_2_MADE = true
		elif !BL_3_MADE:
			var Pickles = Pickles_Resource.instance()
			Pickles.position = Vector2(215,836)
			add_child(Pickles)
			Global.BL3_NUMBER = 5
			BL_3_MADE = true
		elif !BL_4_MADE:
			var Pickles = Pickles_Resource.instance()
			Pickles.position = Vector2(215,801)
			add_child(Pickles)
			Global.BL4_NUMBER = 5
			BL_4_MADE = true
		elif !BL_5_MADE:
			var Pickles = Pickles_Resource.instance()
			Pickles.position = Vector2(215,765)
			add_child(Pickles) 
			Global.BL5_NUMBER = 5
			BL_5_MADE = true

func _on_TomatoButton_pressed():
	if BL_1_MADE:
		if !BL_2_MADE:
			var Tomato = Tomato_Resource.instance()
			Tomato.position = Vector2(215,871)
			add_child(Tomato)
			Global.BL2_NUMBER = 3
			BL_2_MADE = true
		elif !BL_3_MADE:
			var Tomato = Tomato_Resource.instance()
			Tomato.position = Vector2(215,836)
			add_child(Tomato)
			Global.BL3_NUMBER = 3
			BL_3_MADE = true
		elif !BL_4_MADE:
			var Tomato = Tomato_Resource.instance()
			Tomato.position = Vector2(215,801)
			add_child(Tomato)
			Global.BL4_NUMBER = 3
			BL_4_MADE = true
		elif !BL_5_MADE:
			var Tomato = Tomato_Resource.instance()
			Tomato.position = Vector2(215,765)
			add_child(Tomato) 
			Global.BL5_NUMBER = 3
			BL_5_MADE = true 

func _on_OnionButton_pressed():
	if BL_1_MADE:
		if !BL_2_MADE:
			var Onion = Onion_Resource.instance()
			Onion.position = Vector2(215,871)
			add_child(Onion)
			Global.BL2_NUMBER = 4
			BL_2_MADE = true
		elif !BL_3_MADE:
			var Onion = Onion_Resource.instance()
			Onion.position = Vector2(215,836)
			add_child(Onion)
			Global.BL3_NUMBER = 4
			BL_3_MADE = true
		elif !BL_4_MADE:
			var Onion = Onion_Resource.instance()
			Onion.position = Vector2(215,801)
			add_child(Onion)
			Global.BL4_NUMBER = 4
			BL_4_MADE = true
		elif !BL_5_MADE:
			var Onion = Onion_Resource.instance()
			Onion.position = Vector2(215,765)
			add_child(Onion) 
			Global.BL5_NUMBER = 4
			BL_5_MADE = true 
