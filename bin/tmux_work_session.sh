#!/bin/sh

session_name="work_session"

tmux new-session -s "$session_name" -d "newsboat"
if [ $? -eq 0 ]
then
	tmux split-window -t "$session_name" -h "mutt"
	tmux split-window -t "$session_name.1" "ikhal"
fi

tmux attach-session -t "$session_name.3"
