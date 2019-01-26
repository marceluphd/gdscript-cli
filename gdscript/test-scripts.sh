#!/usr/bin/sh

echo "One line tests ->"
python gdscript.py -o "print('Hello World from command-line!')"
python gdscript.py -o "print(Engine.get_version_info())"
python gdscript.py -o "print(OS.get_screen_size(0))"

echo ''
echo "Block tests ->"
python gdscript.py "
extends Node

func _ready():
    var list = []
    for i in range(1000):
        list.append(i)
    print(list)
"

echo ''
echo "Script file tests ->"
python gdscript.py 'test/Bhaskara.gd'
python gdscript.py 'test/EvaluateData.gd'
python gdscript.py 'test/Import.gd'
python gdscript.py 'test/Extends.gd'
python gdscript.py 'test/Enums.gd'
