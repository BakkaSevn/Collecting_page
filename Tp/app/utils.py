import os
from werkzeug.utils import secure_filename
from random import sample
import bcrypt
from datetime import datetime
from flask import current_app

def stringAleatorio(length=20):
    characters = "0123456789abcdefghijklmnopqrstuvwxyz_"
    return ''.join(sample(characters, length))

    
def hash_password(password):
    return bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')