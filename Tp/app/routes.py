from flask import render_template, request, redirect, url_for, flash, session, send_from_directory
from app import app, mysql
import bcrypt


@app.route('/sources/<path:filename>')
def sources(filename):
    return send_from_directory('static/source', filename)

@app.route('/')
def index():
    cur = mysql.connection.cursor()
    cur.execute('SELECT COUNT(*) FROM figura')
    total_figuras = cur.fetchone()[0]
    cur.execute('SELECT numero, altura, edad_minima, imagen FROM figura')
    figuras = cur.fetchall()
    cur.close()
    print(figuras)

    return render_template('index.html', figura=figuras,total=total_figuras)

