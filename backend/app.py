from flask import Flask, jsonify, request
app = Flask(__name__)

tareas = [
    {"id": 1, "titulo": "Ejercicios de fracciones", "curso": "Matemáticas", "alumno": "Juan", "fecha_entrega": "2025-06-15"},
    {"id": 2, "titulo": "Resumen de la fotosíntesis", "curso": "Ciencia", "alumno": "Lucía", "fecha_entrega": "2025-06-16"},
    {"id": 3, "titulo": "Ensayo sobre valores", "curso": "Comunicación", "alumno": "Pedro", "fecha_entrega": "2025-06-17"}
]

@app.route('/')
def home():
    return "API de Gestión de Tareas Escolares"

@app.route('/tareas/<curso>')
def tareas_por_curso(curso):
    filtradas = [t for t in tareas if t["curso"].lower() == curso.lower()]
    return jsonify(filtradas)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
