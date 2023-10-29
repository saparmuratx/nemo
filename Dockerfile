FROM python:3.12

WORKDIR /nemo

COPY requirements/prod.txt /nemo/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /nemo/requirements.txt

COPY src /nemo/src

CMD ["uvicorn", "app.main:main", "--host", "0.0.0.0", "--port", "80"]
