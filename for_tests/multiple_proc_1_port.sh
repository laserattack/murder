#!/bin/bash

PORT=8888

echo "Starting 3 processes on port $PORT"
echo "--------------------------------"

for i in 1 2 3; do
    setsid bash -c "
        echo \"Process $i started with PID: \$$\"
        while true; do
            echo \"Process $i (PID: \$$\$) listening on port $PORT\"
            timeout 30 nc -l -p $PORT -c \"echo 'Hello from process \$i (PID: \$$')\" 2>/dev/null
            sleep 1
        done
    " &
done

sleep 2
echo ""
echo "All processes started. PIDs:"
pgrep -f "nc -l -p $PORT" | while read pid; do
    echo "  $pid"
done
echo ""
echo "To kill: pkill -f 'nc -l -p $PORT'"
echo "Or use: murder :$PORT"
echo ""
echo "Press Ctrl+C to stop all processes"

trap "pkill -f 'nc -l -p $PORT' 2>/dev/null; echo 'Stopped'; exit" INT TERM
wait
