from app import db
from sqlalchemy import Table, Column, Integer, ForeignKey, Numeric, String, DECIMAL, ForeignKey

class User(db.Model):
    __tablename__ = 'users'
    user_id = Column(Integer, primary_key=True)
    username = Column(String(10), nullable=False)
    password = Column(String(20), nullable=False)
    user_state = Column(Numeric(2, 0), nullable=False)
    items = db.relationship('Item', backref='user', lazy=True)
    cart_items = db.relationship('Cart', backref='user', lazy=True)
    favorites = db.relationship('Favorite', backref='user', lazy=True)
    complaints = db.relationship('Complaint', backref='user', lazy=True)
    messages = db.relationship('Message', backref='user', lazy=True)
    orders = db.relationship('Order', backref='user', lazy=True)
    user_sessions = db.relationship('UserSession', backref='user', lazy=True)

class Item(db.Model):
    __tablename__ = 'items'
    item_id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.user_id'))
    item_name = Column(String(10), nullable=False)
    item_price = Column(DECIMAL(10,2), nullable=False)
    item_state = Column(Numeric(2, 0), nullable=False)

class Cart(db.Model):
    __tablename__ = 'cart'
    user_id = Column(Integer, ForeignKey('users.user_id'), primary_key=True)
    item_id = Column(Integer, ForeignKey('items.item_id'), primary_key=True)
    cart_id = Column(Integer, nullable=False)

class Favorite(db.Model):
    __tablename__ = 'favorite'
    user_id = Column(Integer, ForeignKey('users.user_id'), primary_key=True)
    item_id = Column(Integer, ForeignKey('items.item_id'), primary_key=True)
    favorite_id = Column(Integer, nullable=False)

class Complaint(db.Model):
    __tablename__ = 'complaints'
    complaint_id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.user_id'))
    order_id = Column(Integer, ForeignKey('orders.order_id'))
    session_id = Column(Integer, ForeignKey('sessions.session_id'))
    complaint_state = Column(Numeric(2,0), nullable=False)

class Message(db.Model):
    __tablename__ = 'messages'
    message_id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.user_id'))
    session_id = Column(Integer, ForeignKey('sessions.session_id'))
    message_content = Column(db.Text, nullable=False)

class Order(db.Model):
    __tablename__ = 'orders'
    order_id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.user_id'))
    item_id = Column(Integer, ForeignKey('items.item_id'))
    order_state = Column(Numeric(2,0), nullable=False)

class Session(db.Model):
    __tablename__ = 'sessions'
    session_id = Column(Integer, primary_key=True)
    session_state = Column(Numeric(2,0), nullable=False)
    complaints = db.relationship('Complaint', backref='session', lazy=True)
    messages = db.relationship('Message', backref='session', lazy=True)
    user_sessions = db.relationship('UserSession', backref='session', lazy=True)

class UserSession(db.Model):
    __tablename__ = 'user_session'
    session_id = Column(Integer, ForeignKey('sessions.session_id'), primary_key=True)
    user_id = Column(Integer, ForeignKey('users.user_id'), primary_key=True)