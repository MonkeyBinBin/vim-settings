#!/bin/bash

function tmuxide () {
  SESSION_NAME="develop"
  WINDOW_NAME="ide"

  # Check to see if we're already running the session
  tmux has-session -d $SESSION_NAME &> /dev/null

  if [ $? != 0 ] ; then
    # Create tmux session with name and assign window name
    tmux new-session -d -s $SESSION_NAME -n $WINDOW_NAME > /dev/null

    # Split window
    # tmux split-window -v -p 15 -t $SESSION_NAME:$WINDOW_NAME
    # tmux select-pane -t 1
    tmux split-window -h -p 20

    # assign pane 1 action
    tmux select-pane -t 1
    tmux send-keys "neofetch" C-m

  else
    echo "tmux session already running, attaching..."
    sleep 2
  fi

  tmux attach
}
