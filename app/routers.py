from flask import request, jsonify, make_response
from app import app, db
from app.models import User, Item, Order, Session, Complaint, Cart, Favorite, Message
from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView
from flask_login import login_user, current_user, logout_user, login_required

admin = Admin(app, name='Admin', template_mode='bootstrap4')
admin.add_view(ModelView(User, db.session))
admin.add_view(ModelView(Item, db.session))
admin.add_view(ModelView(Order, db.session))
admin.add_view(ModelView(Session, db.session))
admin.add_view(ModelView(Complaint, db.session))
admin.add_view(ModelView(Cart, db.session))
admin.add_view(ModelView(Favorite, db.session))
admin.add_view(ModelView(Message, db.session))

# Login
@app.route('/api/login', methods=['POST'])
def login():
    data = request.json
    assert data
    user = User.query.filter_by(username=data['username']).first()
    if user and data['password'][:20] == user.password[:20]:
        login_user(user)
        return jsonify(user.username)
    return make_response(jsonify({'error': 'Invalid username or password'}), 401)

@app.route('/api/login_status', methods=['GET'])
def login_status():
    if current_user.is_authenticated: # type: ignore
        return jsonify({'username': current_user.username}) # type: ignore
    return make_response(jsonify({'error': 'User not logged in'}), 401)

@app.route('/api/logout', methods=['GET'])
@login_required
def logout():
    logout_user()
    return jsonify({'message': 'User logged out successfully'}), 200

# Users
# @app.route('/api/users', methods=['GET'])
# def get_users():
#     users = User.query.all()
#     return jsonify([user.username for user in users])

# @app.route('/api/users/<int:user_id>', methods=['GET'])
# def get_user(user_id):
#     user = User.query.get(user_id)
#     if user:
#         return jsonify(user.username)
#     return make_response(jsonify({'error': 'User not found'}), 404)

# @app.route('/api/users', methods=['POST'])
# def add_user():
#     data = request.json
#     assert data
#     new_user = User(username=data['username'], password=data['password'], user_state=data['user_state'])
#     db.session.add(new_user)
#     db.session.commit()
#     return jsonify(new_user.username), 201

# @app.route('/api/users/<int:user_id>', methods=['PUT'])
# def update_user(user_id):
#     user = User.query.get(user_id)
#     if not user:
#         return make_response(jsonify({'error': 'User not found'}), 404)
#     data = request.json
#     assert data
#     user.username = data['username']
#     user.password = data['password']  # In a real-world scenario, you should hash the password
#     user.user_state = data['user_state']
#     db.session.commit()
#     return jsonify(user.username)

# @app.route('/api/users/<int:user_id>', methods=['DELETE'])
# def delete_user(user_id):
#     user = User.query.get(user_id)
#     if not user:
#         return make_response(jsonify({'error': 'User not found'}), 404)
#     db.session.delete(user)
#     db.session.commit()
#     return jsonify({'message': 'User deleted successfully'}), 200

# Items

@app.route('/api/items', methods=['GET'])
@login_required
def get_items():
    items = Item.query.all()
    return jsonify([item.item_name for item in items])

@app.route('/api/items/<int:item_id>', methods=['GET'])
@login_required
def get_item(item_id):
    item = Item.query.get(item_id)
    if item:
        return jsonify(item.item_name)
    return make_response(jsonify({'error': 'Item not found'}), 404)

@app.route('/api/items', methods=['POST'])
@login_required
def add_item():
    data = request.json
    assert data
    new_item = Item(user_id=data['user_id'], item_name=data['item_name'], item_price=data['item_price'], item_state=data['item_state'])
    db.session.add(new_item)
    db.session.commit()
    return jsonify(new_item.item_name), 201

@app.route('/api/items/<int:item_id>', methods=['PUT'])
@login_required
def update_item(item_id):
    item = Item.query.get(item_id)
    if not item:
        return make_response(jsonify({'error': 'Item not found'}), 404)
    data = request.json
    assert data
    item.user_id = data['user_id']
    item.item_name = data['item_name']
    item.item_price = data['item_price']
    item.item_state = data['item_state']
    db.session.commit()
    return jsonify(item.item_name)

@app.route('/api/items/<int:item_id>', methods=['DELETE'])
@login_required
def delete_item(item_id):
    item = Item.query.get(item_id)
    if not item:
        return make_response(jsonify({'error': 'Item not found'}), 404)
    db.session.delete(item)
    db.session.commit()
    return jsonify({'message': 'Item deleted successfully'}), 200