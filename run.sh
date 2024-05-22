#!/bin/bash
set -e
echo "Starting run.sh at $(date)" >> run.log
while true
do
    python run_flow.py >> run.log 2>&1
    if [ $? -eq 0 ]; then
      echo "run_flow.py completed successfully" >> run.log
    else
      echo "run_flow.py failed with exit code $?" >> run.log
    fi
    sleep 60
done
echo "Finished run.sh at $(date)" >> run.log
