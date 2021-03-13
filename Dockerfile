FROM python:3.8-alpine

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8005

CMD ["gunicorn", "-w 3", "-t 3", "--bind=0.0.0.0:8005", "app:app"]
