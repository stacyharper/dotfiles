#!/bin/sh

session_name="work_session"

tmux new-session -s "$session_name" -d "newsboat" || exit 1
tmux split-window -t "$session_name" -h "mutt"
tmux split-window -t "$session_name.1" "watch khal"

tmux attach-session -t "$session_name"
