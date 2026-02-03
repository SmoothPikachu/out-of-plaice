extends Node2D

# Preloaded scenes
var fish_scene = preload("res://scenes/entities/fish.tscn")

var fish = []

func _init():
	pass

func _ready() -> void:
	# Link signals
	SignalBus.spawn_fish.connect(spawn_fish)
	
	# Spawn fish
	var new_fish = FishGenerator.generate_fish(FishGenerator.PLAICE)
	fish.append(new_fish)
	add_child(new_fish)

func spawn_fish() -> void:
	var new_fish = FishGenerator.generate_fish(FishGenerator.PLAICE)
	fish.append(new_fish)
	add_child(new_fish)
