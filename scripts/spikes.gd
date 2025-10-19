class_name Spikes

extends Node2D


@export var player_loses_life: bool = true

@onready var player_death : AudioStreamPlayer = %PlayerDeathAudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_hit_box_body_entered(body: Node2D) -> void:
	if player_loses_life:
		player_death.play()
		Global.lives -= 1
