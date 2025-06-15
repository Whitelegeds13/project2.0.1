CREATE TABLE IF NOT EXISTS tareas (
  id SERIAL PRIMARY KEY,
  titulo TEXT NOT NULL,
  descripcion TEXT,
  curso TEXT NOT NULL,
  fecha_entrega DATE,
  alumno TEXT NOT NULL
);
