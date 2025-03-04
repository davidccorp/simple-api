FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt-get update && apt-get upgrade -y \
    && apt-get install build-essential python3-dev libpq-dev -y \
    && apt-get clean  \
    && pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY . /app

EXPOSE 8080

CMD [ "python", "-m", "app.main" ]