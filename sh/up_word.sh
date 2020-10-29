#!/bin/bash

source /home/klein/workspace/nCOV/bin/activate env_nCov  #env_nCov是conda创建的虚拟环境
python3 /home/klein/workspace/nCOV/spider.py up_word >> /home/klein/workspace/nCOV/resource/log/log_word
