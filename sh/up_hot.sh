#!/bin/bash

source /root/anaconda3/envs/env_nCov/bin/activate env_nCov  #env_nCov是conda创建的虚拟环境
python3 /home/username/workspace/nCOV/spider.py up_hot >> /home/username/workspace/nCOV/log/log_hot
