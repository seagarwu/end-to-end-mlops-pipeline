FROM python:3.9.9
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
WORKDIR /app/churn_model
CMD ["python3", "app.py"]
