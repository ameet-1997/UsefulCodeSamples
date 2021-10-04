# Create and name a new session
tmux new -s new_session

# Attaching to a session
tmux attach -t new_session

# Creating
# Window
C-b c
# Tab (left-right and top-bottom)
C-b %  C-b \"

# Navigating
C-b n (for next window) and C-b p (for the previous window)
C-b #no (if window number is less than 10)
C-b \' (followed by index number, for window numbers greater than or equal to 10)

# Kill a session (here, the 0th session)
tmux kill-session -t 0

# Rename a session
tmux rename-session -t 0 diff_session_name

# List all sessions
tmux ls

###### Additional commands ######

### Windows ###
# Renaming a window
C-b ,
# Moving to a specific window
C-b #WindowNumber
# Delete a window
C-b &
