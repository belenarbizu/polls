# Usa la imagen base de Python 3.9 con sistema operativo slim
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos al directorio de trabajo
COPY requirements.txt /app/

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido del directorio actual al directorio de trabajo en el contenedor
COPY . /app/

# Expone el puerto 8000 para el servidor de Django (ajustar según sea necesario)
EXPOSE 8000

# Comando para ejecutar la aplicación (ajustar según la estructura de tu proyecto)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
