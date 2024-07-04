FROM debian:latest

WORKDIR /app/src

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv

RUN python3 -m venv myenv
RUN /bin/bash -c "source myenv/bin/activate && pip install --upgrade pip"

COPY requirements/debian/src/ .

RUN pip3 install -r requirements.txt

# CMD ["python3", "test.py"]
