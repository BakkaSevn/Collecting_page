from flask import Flask
from flask_mysqldb import MySQL
import logging

app = Flask(__name__, 
    template_folder='C:/Users/safav/Desktop/Tp/templates', 
    static_folder='C:/Users/safav/Desktop/Tp/static'
    
)


app.secret_key = 'mysecretkey'
app.config.from_object('app.config.Config')


mysql = MySQL(app)


logging.basicConfig(level=logging.INFO)

from app import routes
