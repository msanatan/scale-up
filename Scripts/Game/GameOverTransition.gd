extends Node

signal transition_finished


func transition_start():
    $AnimationPlayer.play('WhiteCircleGrow')


func _on_AnimationPlayer_animation_finished(anim_name:String):
	emit_signal('transition_finished')