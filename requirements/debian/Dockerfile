FROM debian:latest

WORKDIR /server/src/transcendence

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv

RUN python3 -m venv myenv

COPY ./requirements/debian/src/requirements.txt .  

RUN . myenv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8000

CMD ["sh", "-c", ". myenv/bin/activate && python3 manage.py runserver 0.0.0.0:8000"]
