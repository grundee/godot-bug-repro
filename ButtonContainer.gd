extends Control

var count = 0

func _ready():
	refresh()

func _on_Button_pressed():
	count += 1
	refresh()

func refresh():
	$Label.text = 'Button pressed %d times' % count
