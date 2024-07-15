FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --trusted-host pypi.python.org -r requirement.txt

RUN python cd code_model_training/train.py

EXPOSE 5000

CMD ["python", "app.py"]