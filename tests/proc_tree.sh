#!/bin/bash

echo "Master PID: $$"

sleep 1000 &
CHILD1=$!
echo "Child 1 PID: $CHILD1"

bash -c '
    echo "Child 2 PID: $$"
    sleep 1000 &
    GRANDCHILD1=$!
    echo "Grandchild 1 PID: $GRANDCHILD1"
    
    sleep 1000 &
    GRANDCHILD2=$!
    echo "Grandchild 2 PID: $GRANDCHILD2"
    
    wait
' &
CHILD2=$!
echo "Child 2 (bash) PID: $CHILD2"

echo ""
echo "Tree structure:"
echo "PID $$ (main script)"
echo "  ├─ $CHILD1 (sleep 1000)"
echo "  └── $CHILD2 (bash)"
echo "      ├─ grandchild1"
echo "      └─ grandchild2"

while true; do sleep 1; done
