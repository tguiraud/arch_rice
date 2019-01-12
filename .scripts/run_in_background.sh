#!/bin/bash
# Run a command in the background.
# If the command consists of multiple words, put it in quotes or escape spaces
_evalBg() {     eval "$@" &>/dev/null &disown; } cmd="$1";  
# take input into script and put it into variable $cmd 
echo "Executing detatched and in background: '$cmd'"; _evalBg "${cmd}";


