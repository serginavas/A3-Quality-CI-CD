# Usamos 3.12 que es la que te salía en el error de antes
FROM python:3.12-slim

# Evita archivos .pyc y permite ver logs en tiempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Directorio de trabajo (puedes llamarlo /app para simplificar)
WORKDIR /app

# Copiamos el archivo de requerimientos (¡Asegúrate de la "i"!)
COPY requirements.txt /app/

# Instalamos las librerías
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos todo el contenido del proyecto a /app
COPY . /app/

# Exponemos el puerto
EXPOSE 8000

# COMANDO FINAL: Usamos Gunicorn para producción
# intro_django.wsgi es donde está el punto de entrada de tu proyecto
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "intro_django.wsgi:application"]