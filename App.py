from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost' 
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'ghoproinc_seminario'
mysql = MySQL(app)

app.secret_key = "mysecretkey"

@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM proveedor')
    data = cur.fetchall()
    cur.close()
    return render_template('index.html', contacts = data)

@app.route('/register', methods=['POST'])
def register():
    if request.method == 'POST':
        razon_social = request.form['razon_social']
        nombre = request.form['nombre']
        cuit = request.form['cuit']
        direccion = request.form['direccion']
        ciudad = request.form['ciudad']
        telefono = request.form['telefono']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO proveedor (razon_social, nombre, cuit, direccion, ciudad, telefono, email) VALUES (%s,%s,%s,%s,%s,%s,%s)", 
                    (razon_social, nombre, cuit, direccion, ciudad, telefono, email))
        mysql.connection.commit()
        flash('Proveedor creado!')
        return redirect(url_for('Index'))

@app.route('/edit/<id>', methods = ['POST', 'GET'])
def get_contact(id):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM proveedor WHERE id = %s', [id])
    data = cur.fetchall()
    cur.close()
    return render_template('edit-contact.html', contact = data[0])

@app.route('/update/<id>', methods=['POST'])
def update_contact(id):
    if request.method == 'POST':
        razon_social = request.form['razon_social']
        nombre = request.form['nombre']
        cuit = request.form['cuit']
        direccion = request.form['direccion']
        ciudad = request.form['ciudad']
        telefono = request.form['telefono']
        email = request.form['email']
        cur = mysql.connection.cursor()
        cur.execute("""
            UPDATE proveedor
            SET razon_social = %s,
                nombre = %s,
                cuit = %s,
                direccion = %s,
                ciudad = %s,
                telefono = %s,
                email = %s
            WHERE id = %s
        """, (razon_social, nombre, cuit, direccion, ciudad, telefono, email, id))
        mysql.connection.commit()
        flash('Datos modificados')
        return redirect(url_for('Index'))

@app.route('/delete/<string:id>', methods = ['POST','GET'])
def delete_contact(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM proveedor WHERE id = {0}'.format(id))
    mysql.connection.commit()
    flash('Datos eliminados')
    return redirect(url_for('Index'))

if __name__ == "__main__":
    app.run(port=3000, debug=True)
