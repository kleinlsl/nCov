#!/bin/bash

source /Anaconda/ls/envs/env_nCov/bin/activate env_nCov  #env_nCov是conda创建的虚拟环境
python3 /home/klein/workspace/nCOV/spider.py up_hot >> /home/klein/workspace/nCOV/resource/log/log_hot
