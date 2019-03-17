#!/bin/sh

session_name="2cloud"
2cloud_local_dir="~/Workspace/Ubitransport/projects/2cloud.local"
ubi_docker_dir="~/Workspace/Ubitransport/dockerised"

tmux new-session -s "$session_name" -d -c "$2cloud_local_dir"
if [ $? -eq 0 ]
then
	tmux new-window -t "$session_name" -c "$2cloud_local_dir"
	tmux new-window -t "$session_name" -c "$ubi_docker_dir"
fi

tmux attach-session -t "$session_name:1"
