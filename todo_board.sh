#!/bin/bash

#
# Open up kanban board in tmux for the project I'm working on using task cli task manager
#

if [ -z "$1" ]
then
	echo "Needs a project name to start"
	exit 1
fi

#	-----
#	|0|3|
#	|---|
#	|4|2|
#	|---|
#	| |1|
#	-----

tmux rename-window 'board_'$1
tmux split-window -d -t 0 -v 
tmux split-window -d -t 0 -h
tmux split-window -d -t 2 -h
tmux split-window -d -t 1 -v -p 20

tmux select-pane -t 3
tmux send-keys "watch -n10 'task long project:"$1" +inprogress'" C-m
tmux select-pane -t 4
tmux send-keys "watch -n10 'task completed project:"$1"'" C-m
tmux select-pane -t 2
tmux send-keys "watch -n10 'task long project:"$1" +onhold'" C-m
tmux select-pane -t 0
tmux send-keys "watch -n10 'task long project:"$1" +backlog'" C-m
tmux select-pane -t 1
