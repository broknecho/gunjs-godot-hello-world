extends Control


onready var label = $MarginContainer/Panel/VBoxContainer/HBoxContainer/Label
onready var line_edit = $MarginContainer/Panel/VBoxContainer/HBoxContainer/LineEdit

var console = JavaScript.get_interface("console")
var gunjs = JavaScript.create_object("Gun", "https://gun-manhattan.herokuapp.com/gun", "http://localhost:8765/gun")
var copy = gunjs.get("godot").get("paste")
var _copy_data_callback_ref = JavaScript.create_callback(self, "_copy_data_callback")


func _ready():
	console.info("Hello from Godot!")
	copy.on(_copy_data_callback_ref)

func _copy_data_callback(args):
	label.text = args[0]

func _on_LineEdit_text_entered(new_text):
	copy.put(new_text)
	line_edit.text = ""


func _on_Button_pressed():
	copy.put(line_edit.text)
	line_edit.text = ""
