FROM python:3.10
ADD ./requirements.txt .
COPY ./exile_tools_poc /app
RUN pip install -r requirements.txt
RUN chmod u+x app/manage.py
ENTRYPOINT ["/app/manage.py", "runserver", "0.0.0.0:8000"]