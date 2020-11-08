#!/usr/bin/env bash

PIPE=`uuid`
WINDOW=terminal-polltion-${PIPE}

mkdir -p /tmp/terminal-pollution
rm -rf /tmp/terminal-pollution/${PIPE}
mkfifo /tmp/terminal-pollution/${PIPE}

xfce4-terminal --hide-borders -T "${WINDOW}" -e "cat /tmp/terminal-pollution/${PIPE}"

bash -c "$* 2>&1 >> /tmp/terminal-pollution/${PIPE}" &
