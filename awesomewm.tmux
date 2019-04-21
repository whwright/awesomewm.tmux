# Create new pane
bind -n M-Enter split-window -t :.0 \;\
    swap-pane -s :.0 -t :.1 \;\
    select-layout main-vertical \;\
    run "tmux resize-pane -t :.0 -x \"$(echo \"#{window_width}/2/1\" | bc)\""

# Kill pane
bind -n M-C kill-pane -t :. \;\
    select-layout main-vertical \;\
    run "tmux resize-pane -t :.0 -x \"$(echo \"#{window_width}/2/1\" | bc)\"" \;\
    select-pane -t :.0

# Next pane
bind -n M-j select-pane -t :.+

# Prev pane
bind -n M-k select-pane -t :.-

# Rotate clockwise
bind -n M-J rotate-window -D \; select-pane -t 0

# Rotate counterclockwise
bind -n M-K rotate-window -U \; select-pane -t 0

# Refresh layout
bind -n M-r select-layout main-vertical \;\
    run "tmux resize-pane -t :.0 -x \"$(echo \"#{window_width}/2/1\" | bc)\""

