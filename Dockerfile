FROM ubuntu:14.04
MAINTAINER Andrew Moore

RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && apt-get install -y build-essential git python python-dev python-setuptools
RUN easy_install pip

WORKDIR /code/

# Add requirements and install
RUN pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.6.0-cp27-none-linux_x86_64.whl
ADD ./requirements.txt /code/
RUN pip install -r ./requirements.txt

# Add service.conf
ADD /run.py /code/
