FROM ubuntu:14.04
MAINTAINER Andrew Moore

RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && apt-get install -y build-essential git python python-dev python-setuptools nginx supervisor bcrypt libssl-dev libffi-dev libpq-dev vim redis-server rsyslog wget
RUN easy_install pip

WORKDIR /code/

# Add requirements and install
ADD ./requirements.txt /code/
RUN pip install -r ./requirements.txt
RUN pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.6.0-cp27-none-linux_x86_64.whl

# Add service.conf
ADD /run.py /code/