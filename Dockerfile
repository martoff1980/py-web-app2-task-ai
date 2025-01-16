# Встановлення базового образу
FROM python:3.8-slim-buster

# Встановлення залежностей
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Копіювання проекту
COPY . .

# Команда для запуску
CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]