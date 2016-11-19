from __future__ import absolute_import
from __future__ import print_function

import os
import shutil
 
def setup_keras():
    if not os.path.exists('/home/ubuntu'):
        return

    destfile = '/home/ubuntu/.theanorc'
    open(destfile, 'a').close()
    shutil.copyfile("/mnt/.theanorc", destfile)

    destpath = '/home/ubuntu/.keras'
    destfile = 'keras.json'
    filepath = os.path.join(destpath, destfile)

    if not os.path.exists(destpath):
        os.makedirs(destpath)

    open(filepath, 'a').close()
    shutil.copyfile('/mnt/keras.json', filepath)
 
    # cuda_path = '/mnt/cuda'

    # if 'CPATH' not in os.environ:
    #     os.environ['CPATH'] = ''
    # os.environ['CPATH'] = '{}/{}:{}'.format(
    #     cuda_path, 'include', os.environ['CPATH'])

    # if 'LIBRARY_PATH' not in os.environ:
    #     os.environ['LIBRARY_PATH'] = ''
    # os.environ['LIBRARY_PATH'] = '{}/{}:{}'.format(
    #     cuda_path, 'lib64', os.environ['LIBRARY_PATH'])

    # if 'LD_LIBRARY_PATH' not in os.environ:
    #     os.environ['LD_LIBRARY_PATH'] = ''
    # os.environ['LD_LIBRARY_PATH'] = '{}/{}:{}'.format(
    #     cuda_path, 'lib64', os.environ['LD_LIBRARY_PATH'])

    # print('CPATH', os.environ['CPATH'])
    # print('LIBRARY_PATH', os.environ['LIBRARY_PATH'])
    # print('LD_LIBRARY_PATH', os.environ['LD_LIBRARY_PATH'])

    print ("Finished setting up Keras")
