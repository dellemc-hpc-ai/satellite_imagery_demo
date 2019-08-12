# this script organizes the files to be present in the structure that the notebook expects.
# This script should be present inside the dataset folder.
#!/bin/bash
tar -xvf train_images.tgz -C sample_train_images
cd sample_train_images
mv train_images/* .
cp sample_train_images/1038.tif ../
cp sample_train_images/1075.tif ../ 
cp sample_train_images/108.tif ../
cd ../
tar -xvf train_labels.tgz

