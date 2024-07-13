FROM debian:latest

WORKDIR /server/src

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv

RUN python3 -m venv myenv

RUN pip install -r requirement.txt

RUN . myenv/bin/activate && pip install --upgrade pip

WORKDIR /server/src/transcendence

RUN python -m manage runserver

#COPY requirements/debian/src/ .

#RUN . myenv/bin/activate



# CMD ["myenv/bin/python3", "test.py"]  
