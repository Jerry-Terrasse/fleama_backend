from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import pymysql
pymysql.install_as_MySQLdb()

from config import cfg

app = Flask(__name__)
app.config.update(cfg)
db = SQLAlchemy(app)

from app import models, routers