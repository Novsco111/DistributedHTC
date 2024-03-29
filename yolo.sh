#!/usr/bin/bash
# file name: yolo.sh

# check python version
echo "$(python3 --version)"

# change to directory
cd /home/ubuntu/yolo/DistributedHTC
echo "Directory changed"

# activate python env
source venv/bin/activate
echo "Python env activated"

# run detect.py on an image
echo "Execution start"
echo $1
python3 detect.py --weights yolov5s.pt --source $1
echo "Execution complete"

# deactivate python env
deactivate
echo "Python env deactivated"
