# this script organizes the files to be present in the structure that the notebook expects.
# This script should be present inside the dataset folder.
#!/bin/bash

mkdir sample_train_images
tar -xvf val_images.tgz -C sample_train_images
cd sample_train_images
mv train_images/* .
cp 1038.tif ../
cp 1075.tif ../ 
cp 108.tif ../
cd ../
tar -xvf train_labels.tgz

