#!/bin/bash
#
# Watches the folder or files passed as arguments to the script and when it
# detects a change it automatically refreshes the current selected Chrome tab or
# window.
#
# http://razius.com/articles/auto-refreshing-google-chrome-on-file-changes/
#
# Usage:
# ./chrome-refresh.sh /folder/to/watch /some/folder/file_to_watch.html
 
TIME_FORMAT='%F %H:%M'
OUTPUT_FORMAT='%T Event(s): %e fired for file: %w. Refreshing.'
 
RELOAD_KEYS="CTRL+R"
BROWSER="google-chrome"
CURRENT=''
 
while inotifywait -q -r -e modify --timefmt "${TIME_FORMAT}" --format "${OUTPUT_FORMAT}" "$@"; do
    #CHROME_WINDOW_ID=$(xdotool search --onlyvisible --class google-chrome | head -1)
    #xdotool key --window $CHROME_WINDOW_ID 'CTRL+r'
    sleep 1.5
    CURRENT=$(xdotool getactivewindow)
    xdotool search --class ${BROWSER} windowactivate --sync
    xdotool search --class ${BROWSER} key --clearmodifiers ${RELOAD_KEYS}

    xdotool windowfocus --sync ${CURRENT}
    xdotool windowactivate --sync ${CURRENT}

done
