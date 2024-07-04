FROM debian:latest

WORKDIR /app/src

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    postgresql-client

COPY requirements/debian/src/requirements.txt . 
RUN pip3 install -r requirements.txt

COPY requirements/debian/src/ .

# CMD ["python3", "test.py"]
