#some make aliases
alias qwe="clear && make -j"
alias meh="clear && make clean && make -j"

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lla="ls -la"

#recursively grep and show line numbers
alias ggrep="grep -r -n"

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 10 -type d -print | xargs du -sk | sort -rn"

# Good for finding what is eating your harddrive
alias diskspace="du -S | sort -n -r |more"

