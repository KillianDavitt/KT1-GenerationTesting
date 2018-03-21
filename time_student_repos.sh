#!/bin/bash
for filename in student_code/*.py; do
    run_time=$(time python3 $filename)
    keys=$(python3 $filename --write-keys)
    
    echo $time
done
