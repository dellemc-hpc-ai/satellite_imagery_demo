# Change the location to your dataset folder
# Follow instructions here  https://github.com/dellemc-hpc-ai/satellite_imagery_demo

#! /bin/bash

# lets say your usename is doe and your dataset folder is in your desktop. 
# Here is how you'd change it. 
# docker run --rm  \
#         -p 8888:8888 \
#         -v /home/doe/Desktop/dataset:/home/jovyan/xview \
#         --name "satellite-imaging" \
#         dellemchpcai/satellite_demo:latest

# Now go ahead, change the dataset path
docker run --rm  \
        -p 8888:8888 \
        -v /path/to/your/dataset:/home/jovyan/xview/dataset \
        --name "satellite-imaging" \
        dellemchpcai/satellite_demo:latest

