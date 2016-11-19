#! /bin/bash

LOCAL=/mnt
TEMP=/tmp
CUDA_HOME=/usr/local/cuda-7.5/

# unpack
tar xzf $LOCAL/cudnn-7.5-linux-x64-v5.0-ga.tgz -C $TEMP
tar xzf $LOCAL/cudnn-7.5-linux-x64-v5.1.tgz -C $TEMP

# copy to cuda dir
cp $TEMP/cuda/lib64/* $CUDA_HOME/lib64
cp $TEMP/cuda/include/* $CUDA_HOME/include

# export paths
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-7.5/extras/CUPTI/lib64' >> /home/ubuntu/.domino-defaults
