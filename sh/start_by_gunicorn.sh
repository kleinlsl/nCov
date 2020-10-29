#! /bin/bash

source /Anaconda/ls/envs/env_nCov/bin/activate env_nCov #env_nCov是conda创建的虚拟环境
cd /home/klein/workspace/nCOV/
gunicorn -b 127.0.0.1:5000 -D app:app
