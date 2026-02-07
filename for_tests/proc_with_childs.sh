#!/bin/bash

echo "Master PID: $$"
echo "Process Group ID (PGID): $(ps -o pgid= $$)"

sleep 1000 &
echo "Child 1 PID: $!"

bash -c "sleep 1000" &
echo "Child 2 PID: $!"

bash -c "echo 'Subshell started'; sleep 1000" &
echo "Child 3 PID: $!"

while true; do sleep 1; done
