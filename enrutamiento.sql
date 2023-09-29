
from flask import Flask

app = Flask(__name__)

# Ruta raíz que responde con "¡Hola Mundo!"
@app.route('/')
def hola_mundo():
    return "¡Hola Mundo!"

# Ruta que responde con "¡Dojo!"
@app.route('/dojo')
def dojo():
    return "¡Dojo!"

# Ruta que responde con "Hola" y el nombre de la URL después de /say/
@app.route('/say/<nombre>')
def saludar(nombre):
    return f"¡Hola, {nombre}!"

# Ruta que responde con la palabra repetida tantas veces como se especifique en la URL
@app.route('/repeat/<int:veces>/<palabra>')
def repetir(veces, palabra):
    return palabra * veces

# Ruta de error para cualquier otra ruta no especificada
@app.errorhandler(404)
def pagina_no_encontrada(error):
    return "¡Lo siento! No hay respuesta. Inténtalo otra vez.", 404

if __name__ == '__main__':
    app.run(debug=True)
