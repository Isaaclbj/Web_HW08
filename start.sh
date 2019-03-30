#!/bin/bash
export MIX_ENV=prod
export PORT=5001
echo "Stopping old copy of app, if any..."

_build/prod/rel/tasks2/bin/tasks2 stop || true

echo "Starting app..."

# Start to run in background from shell.
#_build/prod/rel/tracker1/bin/tracker1 start
# Foreground for testing and for systemd
_build/prod/rel/tasks2/bin/tasks2 start
