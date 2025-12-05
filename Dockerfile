# Imagen base
FROM python:3.10-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todo el contenido del proyecto al contenedor
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer puerto de la app
EXPOSE 5000

# Ejecutar la aplicación
CMD ["python", "app.py"]
