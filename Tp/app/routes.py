from flask import render_template, request, redirect, url_for, flash, session, send_from_directory
from app import app, mysql
import bcrypt
from app.utils import stringAleatorio, hash_password


#INDEX
@app.route('/')
@app.route('/', defaults={'pagina': 1})
@app.route('/pagina/<int:pagina>')
def index(pagina):
    por_pagina = 12
    cur = mysql.connection.cursor()
    cur.execute('SELECT COUNT(*) FROM figura')
    total_figuras = cur.fetchone()[0]
    offset = (pagina - 1) * por_pagina
    cur.execute('SELECT numero, altura, edad_minima, imagen FROM figura LIMIT %s OFFSET %s', (por_pagina, offset))
    figuras = cur.fetchall()
    cur.close()
    paginas_totales = (total_figuras + por_pagina - 1) // por_pagina

    if pagina > paginas_totales:
        return redirect(url_for('index', pagina=paginas_totales))
    

    return render_template('index.html', figura=figuras, pagina=pagina, paginas_totales=paginas_totales)

#FUNCIONES REGISTER Y LOGIN
@app.route('/register', methods=["POST"])
def registro():
    if request.method == 'POST':
        nombre = request.form['nombre']
        email = request.form['email']
        password = request.form['password']
        hashed_password = hash_password(password)

        cur = mysql.connection.cursor()
        quer="crear_usuario"
        cur.callproc(quer,(nombre, email, hashed_password ))
        mysql.connection.commit()
        cur.close()
        return redirect(url_for("index"))

if __name__ == '__main__':
    app.run(debug=True)