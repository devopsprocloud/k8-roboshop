FROM python:3.9.23-alpine3.22
EXPOSE 8080
USER root 
WORKDIR /app 
COPY requirements.txt /app/ 
RUN pip install -r requirements.txt
COPY *.py /app/
COPY payment.ini /app/ 
CMD ["uwsgi", "--ini", "payment.ini"]
