from flask import Flask
from flaskext.mysql import MySQL

app = Flask(__name__)


app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'inventory_management'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql = MySQL(app)

@app.route('/')
def test_db():
    try:
        cur = mysql.connect().cursor()
        cur.execute('SELECT DATABASE()')
        db = cur.fetchone()
        return f"Connecté à la base de données : {db}"
    except Exception as e:
        return f"Erreur : {e}"

if __name__ == '__main__':
    app.run(debug=True)
