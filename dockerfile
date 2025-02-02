# Temel imaj
FROM python:3.8-slim    

# Çalışma dizini
WORKDIR /app

# Gerekli bağımlılıklar
COPY requirements.txt .
RUN pip install -r requirements.txt

# Uygulama kodlarını kopyala
COPY . .

# Uygulamanın portu
EXPOSE 5000

# Uygulamayı başlat
CMD ["python", "app.py"]