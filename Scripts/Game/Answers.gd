extends Node2D

signal wrong_answer_selected
signal right_answer_selected

onready var answer_1: Button = $Answer1
onready var answer_2: Button = $Answer2
onready var answer_3: Button = $Answer3
onready var answer_4: Button = $Answer4

var correct_answer: int


func set_answers(answers: Array, correct_ans: int):
    answer_1.text = str(answers[0])
    answer_2.text = str(answers[1])
    answer_3.text = str(answers[2])
    answer_4.text = str(answers[3])
    correct_answer = correct_ans

func is_correct_answer(answer: int):
    var is_correct: bool = answer == correct_answer

    if is_correct:
        emit_signal('right_answer_selected')
    else:
        emit_signal('wrong_answer_selected')

    return is_correct

func _on_Answer1_pressed():
    is_correct_answer(int(answer_1.text))


func _on_Answer2_pressed():
    is_correct_answer(int(answer_2.text))


func _on_Answer3_pressed():
    is_correct_answer(int(answer_3.text))


func _on_Answer4_pressed():
    is_correct_answer(int(answer_4.text))