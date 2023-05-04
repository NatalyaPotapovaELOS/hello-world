FROM ubi8/ubi:8.5
LABEL description="Python Flask Hello World"
USER 0
RUN yum -y install python3-pip
RUN pip3 install flask
RUN env
EXPOSE 5000
COPY ./web.py .
USER 1001
ENTRYPOINT ["python3","web.py"]


