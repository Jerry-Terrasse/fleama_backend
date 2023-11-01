import os
import json
import pathlib

base = os.path.abspath(os.path.dirname(__file__))
base = pathlib.Path(base)

cfg = json.load(open(base / 'config.json'))
db_cfg = cfg['db']

SQLALCHEMY_DATABASE_URI = f"mysql://{db_cfg['username']}:{db_cfg['password']}@localhost/{db_cfg['dbname']}"
SQLALCHEMY_TRACK_MODIFICATIONS = False

cfg['SQLALCHEMY_DATABASE_URI'] = SQLALCHEMY_DATABASE_URI
cfg['SQLALCHEMY_TRACK_MODIFICATIONS'] = SQLALCHEMY_TRACK_MODIFICATIONS