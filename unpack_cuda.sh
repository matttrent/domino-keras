#! /bin/bash

CUDA_LOCAL=/mnt/cuda
CUDA_HOME=/usr/local/cuda-7.5/

# unpack
cd /mnt
rm -rf $CUDA_LOCAL
tar xzf cudnn-7.5-linux-x64-v5.0-ga.tgz
tar xzf cudnn-7.5-linux-x64-v5.1.tgz

# copy to existing places if permitted
cp $CUDA_LOCAL/lib64/* $CUDA_HOME/lib64
cp $CUDA_LOCAL/include/* $CUDA_HOME/include

rm -rf $CUDA_LOCAL

# replace symlinks with normal files for domino sync
# rm -f $CUDA_LOCAL/lib64/libcudnn.so $CUDA_LOCAL/lib64/libcudnn.so.5
# cp $CUDA_LOCAL/lib64/libcudnn.so.5.0.5 $CUDA_LOCAL/lib64/libcudnn.so
# cp $CUDA_LOCAL/lib64/libcudnn.so.5.0.5 $CUDA_LOCAL/lib64/libcudnn.so.5

# echo $CPATH
# echo $LD_LIBRARY_PATH
# echo $LIBRARY_PATH

# export paths, take 2
# echo 'export CPATH=/mnt/cuda/include:$CPATH' >> /home/ubuntu/.domino-defaults
# echo 'export LD_LIBRARY_PATH=/mnt/cuda/lib64:$LD_LIBRARY_PATH' >> /home/ubuntu/.domino-defaults
# echo 'export LIBRARY_PATH=/mnt/cuda/lib64:$LIBRARY_PATH' >> /home/ubuntu/.domino-defaults
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-7.5/extras/CUPTI/lib64' >> /home/ubuntu/.domino-defaults

# export paths
# export CPATH=$CUDA_LOCAL/include:$CPATH
# export LD_LIBRARY_PATH=$CUDA_LOCAL/lib64:$LD_LIBRARY_PATH
# export LIBRARY_PATH=$CUDA_LOCAL/lib64:$LIBRARY_PATH
