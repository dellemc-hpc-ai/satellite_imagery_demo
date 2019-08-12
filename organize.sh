# this script organizes the files to be present in the structure that the notebook expects.
# This script should be present inside the dataset folder.
#!/bin/bash

mkdir sample_train_images
tar -xvf train_images.tgz -C sample_train_images
mv sample_train_images/train_images/* sample_train_images/

# backup files before deleting
cp sample_train_images/102.tif .
cp sample_train_images/1036.tif .
cp sample_train_images/1037.tif .
cp sample_train_images/1042.tif .


rm -f sample_train_images/*.tif

# get the backup
mv 102.tif sample_train_images/
mv 1036.tif sample_train_images/
mv 1037.tif sample_train_images/
mv 1042.tif sample_train_images/


mkdir sample_val_images

# extract validation images
tar -xvf val_images.tgz -C sample_val_images

# backup files before deleting
cp sample_val_images/val_images/1038.tif .
cp sample_val_images/val_images/1075.tif .
cp sample_val_images/val_images/108.tif .

rm -rf sample_val_images

tar -xvf train_labels.tgz

