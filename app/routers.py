from flask import request, jsonify, make_response
from app import app, db
from app.models import User, Item, Order, Session, Complaint, Cart, Favorite, Message
from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView

admin = Admin(app, name='Admin', template_mode='bootstrap4')
admin.add_view(ModelView(User, db.session))

# Users
@app.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    return jsonify([user.username for user in users])

@app.route('/users/<int:user_id>', methods=['GET'])
def get_user(user_id):
    user = User.query.get(user_id)
    if user:
        return jsonify(user.username)
    return make_response(jsonify({'error': 'User not found'}), 404)

@app.route('/users', methods=['POST'])
def add_user():
    data = request.json
    new_user = User(username=data['username'], password=data['password'], user_state=data['user_state'])
    db.session.add(new_user)
    db.session.commit()
    return jsonify(new_user.username), 201

@app.route('/users/<int:user_id>', methods=['PUT'])
def update_user(user_id):
    user = User.query.get(user_id)
    if not user:
        return make_response(jsonify({'error': 'User not found'}), 404)
    data = request.json
    user.username = data['username']
    user.password = data['password']  # In a real-world scenario, you should hash the password
    user.user_state = data['user_state']
    db.session.commit()
    return jsonify(user.username)

@app.route('/users/<int:user_id>', methods=['DELETE'])
def delete_user(user_id):
    user = User.query.get(user_id)
    if not user:
        return make_response(jsonify({'error': 'User not found'}), 404)
    db.session.delete(user)
    db.session.commit()
    return jsonify({'message': 'User deleted successfully'}), 200

# Items

@app.route('/items', methods=['GET'])
def get_items():
    items = Item.query.all()
    return jsonify([item.item_name for item in items])

@app.route('/items/<int:item_id>', methods=['GET'])
def get_item(item_id):
    item = Item.query.get(item_id)
    if item:
        return jsonify(item.item_name)
    return make_response(jsonify({'error': 'Item not found'}), 404)

@app.route('/items', methods=['POST'])
def add_item():
    data = request.json
    new_item = Item(user_id=data['user_id'], item_name=data['item_name'], item_price=data['item_price'], item_state=data['item_state'])
    db.session.add(new_item)
    db.session.commit()
    return jsonify(new_item.item_name), 201

@app.route('/items/<int:item_id>', methods=['PUT'])
def update_item(item_id):
    item = Item.query.get(item_id)
    if not item:
        return make_response(jsonify({'error': 'Item not found'}), 404)
    data = request.json
    item.user_id = data['user_id']
    item.item_name = data['item_name']
    item.item_price = data['item_price']
    item.item_state = data['item_state']
    db.session.commit()
    return jsonify(item.item_name)

@app.route('/items/<int:item_id>', methods=['DELETE'])
def delete_item(item_id):
    item = Item.query.get(item_id)
    if not item:
        return make_response(jsonify({'error': 'Item not found'}), 404)
    db.session.delete(item)
    db.session.commit()
    return jsonify({'message': 'Item deleted successfully'}), 200