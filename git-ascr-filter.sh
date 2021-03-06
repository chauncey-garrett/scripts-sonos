#!/bin/sh
if [ $# -ne 2 ]; then
    echo "Usage: $0 --clean/--smudge FILE">&2
    exit 1
else
    if [ $1 = "--clean" ]; then
        osadecompile "$2" | sed 's/[[:space:]]*$//'
    elif [ $1 = "--smudge" ]; then
        TMPFILE=`mktemp -t tempXXXXXX`
        if [ $? -ne 0 ]; then
            echo "Error: \`mktemp' failed to create a temporary file.">&2
            exit 3
        fi
        if ! mv "$TMPFILE" "$TMPFILE.scpt" ; then
            echo "Error: Failed to create a temporary SCPT file.">&2
            rm "$TMPFILE"
            exit 4
        fi
        TMPFILE="$TMPFILE.scpt"
        # Compile the AppleScript source on stdin.
        if ! osacompile -l AppleScript -o "$TMPFILE" ; then
            rm "$TMPFILE"
            exit 5
        fi
        cat "$TMPFILE" && rm "$TMPFILE"
    else
        echo "Error: Unknown mode '$1'">&2
        exit 2
    fi
fi
