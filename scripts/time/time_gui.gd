extends Control

@onready var minutes_label : Label = %minutes
@onready var seconds_label : Label = %seconds

func _on_time_system_updated(date_time: DateTime) -> void:
	update_label(minutes_label, date_time.minutes)
	update_label(seconds_label, date_time.seconds)

func add_leading_zero(label: Label, value: int) -> void:
	if value < 10:
		label.text += '0'

func update_label(label: Label, value: int, should_have_zero: bool = true) -> void:
	label.text = ""
	
	if should_have_zero:
		add_leading_zero(label, value)
		
	label.text += str(value)
