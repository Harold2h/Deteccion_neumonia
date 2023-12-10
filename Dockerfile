FROM python:3.8-slim-buster
RUN apt-get update && apt-get install -y git
COPY requirements.txt .
RUN pip install --upgrade -r requirements.txt
COPY app app/
RUN python app/main.py
EXPOSE 80 8080
CMD ["python", "app/main.py", "serve"]