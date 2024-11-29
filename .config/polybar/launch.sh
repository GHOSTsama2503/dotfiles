#!/usr/bin/env bash
MONITOR=$(polybar -m | tail -1 | sed -e 's/:.*$//g')

polybar main &

is_fullscreen () {
  window_id=$(xdotool getactivewindow)
  window_state=$(xprop -id "$window_id" _NET_WM_STATE)

  if [[ "$window_state" == *"_NET_WM_STATE_FULLSCREEN"* ]]; then
    echo 1
  else
    echo 0
  fi
}

hidden=0

while true; do
  fullscreen=$(is_fullscreen)

  if [ "$fullscreen" -eq 1 ] && [ $hidden -eq 0 ]; then
    polybar-msg cmd hide
    hidden=1
  elif [ "$fullscreen" -eq 0 ] && [ $hidden -eq 1 ]; then
    polybar-msg cmd show
    hidden=0
  fi

  sleep 0.1
done
