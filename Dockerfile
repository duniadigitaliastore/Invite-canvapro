FROM mcr.microsoft.com/playwright/python:v1.49.1-jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh skrip dan state.json
COPY . .

CMD ["python", "main.py"]
