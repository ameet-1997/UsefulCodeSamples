# Create and name a new session
tmux new -s new_session

# Attaching to a session
tmux attach -t new_session

# Creating
# Window
C-b c
# Tab (left-right and top-bottom)
C-b %  C-b "

# Navigating
C-b <arrow key>

# Kill a session (here, the 0th session)
tmux kill-session -t 0

# Rename a session
tmux rename-session -t 0 diff_session_name

# List all sessions
tmux ls
