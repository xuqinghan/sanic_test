FROM python
LABEL author="xuqinghan"
LABEL purpose = ''

RUN apt update
#RUN apt install -y nginx supervisor
RUN pip3 install gunicorn
RUN pip3 install setuptools
#RUN apt install -y 
#代码复制过来后的路径
RUN mkdir -p /code
WORKDIR /code
#COPY app /deploy/app
#COPY requirements.txt /code/requirements.txt
#RUN pip3 install -r requirements.txt
ENV PYTHONIOENCODING=utf-8

RUN pip3 install flask
RUN pip3 install sanic
CMD ["/bin/bash"]
