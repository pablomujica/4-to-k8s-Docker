FROM python:3.8.5-slim
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
RUN chmod +x starter.sh
ENTRYPOINT ["./starter.sh"]