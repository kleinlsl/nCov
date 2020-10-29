import numpy as np
from easydict import EasyDict as edict
import yaml

# 创建dict
__C = edict()
cfg = __C

# # 定义配置dict
# 配置数据库
__C.database = edict()

__C.database.mysql = edict()  # 配置MySQL数据库
__C.database.mysql.host = "127.0.0.1"
__C.database.mysql.user = "root"
__C.database.mysql.passwd = "123456"
__C.database.mysql.db = "ncov"
__C.database.mysql.charset = "utf8"


# 内部方法，实现yaml配置文件到dict的合并
def _merge_a_into_b(a, b):
    """
    Merge config dictionary a into config dictionary b, clobbering the
    options in b whenever they are also specified in a.
    """
    if type(a) is not edict:
        return

    for k, v in a.items():
        # a must specify keys that are in b
        if k not in b:
            raise KeyError('{} is not a valid config key'.format(k))

        # the types must match, too
        old_type = type(b[k])
        if old_type is not type(v):
            if isinstance(b[k], np.ndarray):
                v = np.array(v, dtype=b[k].dtype)
            else:
                raise ValueError(('Type mismatch ({} vs. {}) '
                                  'for config key: {}').format(type(b[k]),
                                                               type(v), k))

        # recursively merge dicts
        if type(v) is edict:
            try:
                _merge_a_into_b(a[k], b[k])
            except:
                print(('Error under config key: {}'.format(k)))
                raise
        else:
            b[k] = v


# 自动加载yaml文件
def cfg_from_file(filename):
    """Load a config file and merge it into the default options."""
    with open(filename, 'r', encoding='utf-8') as f:
        yaml_cfg = edict(yaml.load(f, Loader=yaml.FullLoader))

    _merge_a_into_b(yaml_cfg, __C)
