
FROM python:3.9.19-slim

WORKDIR /app

COPY app.py /app/app.py

CMD ["python", "app.py"]
