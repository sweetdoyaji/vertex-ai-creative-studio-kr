FROM python:3.10-slim # Python 3.10 이상 버전으로 변경

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
