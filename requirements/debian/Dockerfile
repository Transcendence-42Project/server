FROM debian:latest

WORKDIR /server/src/backend

# RUN apt-get update && apt-get install -y \
#    python3 \
#    python3-pip \
#    python3-venv

# RUN python3 -m venv myenv

# ÖNEMLİ!
#RUN . myenv/bin/activate && pip install --upgrade pip

COPY requirements/debian/src/ .

#RUN . myenv/bin/activate && pip install -r requirements.txt

# CMD ["myenv/bin/python3", "test.py"]  
