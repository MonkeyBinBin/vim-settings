#!/bin/bash

function startuptmux () {
  SESSION_NAME="develop"
  WINDOW_NAME="ide"

  # Check to see if we're already running the session
  tmux has-session -d $SESSION_NAME &> /dev/null

  if [ $? != 0 ] ; then
    # Create tmux session with name and assign window name
    tmux new-session -d -s $SESSION_NAME -n $WINDOW_NAME > /dev/null
    tmux send-keys "neofetch" C-m
    tmux send-keys "ide" C-m
  else
    echo "tmux session already running, attaching..."
    sleep 2
  fi

  tmux attach
}

function ide () {
  # Split window
  tmux split-window -v -l 15
  tmux select-pane -t 1
}
